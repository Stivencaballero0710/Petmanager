"""Demostración reproducible en SQLite de los scripts de entrega para MySQL.

Solo usa Python 3 estándar. No modifica bases ni archivos del usuario.
La adaptación sirve para probar datos, relaciones y consultas; no certifica
los tipos, la intercalación ni AUTO_INCREMENT de MySQL.
"""

from pathlib import Path
import re
import sqlite3

SQL = Path(__file__).resolve().parent


def leer(relativo):
    return (SQL / relativo).read_text(encoding="utf-8")


def sentencias(texto):
    """Separa estos archivos con el analizador de sentencias de SQLite.

    No divide por cada punto y coma: respeta literales y comentarios.
    """
    acumulado = ""
    resultado = []
    for caracter in texto:
        acumulado += caracter
        if caracter == ";" and sqlite3.complete_statement(acumulado):
            limpio = re.sub(r"--[^\n]*", "", acumulado).strip()
            if limpio and not re.match(r"USE\s+", limpio, re.I):
                resultado.append(acumulado.strip())
            acumulado = ""
    if re.sub(r"--[^\n]*", "", acumulado).strip():
        raise ValueError("Hay una sentencia sin punto y coma final.")
    return resultado


def adaptar_sqlite(texto):
    texto = re.sub(r"^USE\s+\w+;\s*$", "", texto, flags=re.M | re.I)
    texto = re.sub(r"\s+AUTO_INCREMENT\b", "", texto, flags=re.I)
    texto = re.sub(r"\s+ENGINE=InnoDB", "", texto, flags=re.I)
    return texto.replace("START TRANSACTION;", "BEGIN TRANSACTION;")


def crear_demo():
    conexion = sqlite3.connect(":memory:")
    conexion.execute("PRAGMA foreign_keys = ON")
    conexion.executescript(adaptar_sqlite(leer("02_Creacion_de_tablas/basededatosVeterinaria.sql")))
    conexion.executescript(adaptar_sqlite(leer("04_Insercion_de_datos/registros.sql")))
    return conexion


def consultas():
    return sentencias(leer("05_Consultas/consultas.sql"))


def conteos(conexion):
    nombres = [r[0] for r in conexion.execute(
        "SELECT name FROM sqlite_master WHERE type='table' ORDER BY name"
    )]
    return [(nombre, conexion.execute('SELECT COUNT(*) FROM "' + nombre + '"').fetchone()[0]) for nombre in nombres]


def comprobar(conexion):
    cantidades = dict(conteos(conexion))
    assert len(cantidades) == 18, cantidades
    assert cantidades["empleado"] == 30
    assert cantidades["registro_clinico"] == 40
    assert all(n == 10 for t, n in cantidades.items() if t not in ("empleado", "registro_clinico"))
    assert sum(cantidades.values()) == 230
    assert min(cantidades.values()) >= 5
    assert conexion.execute("PRAGMA foreign_key_check").fetchall() == []
    fk = sum(len(conexion.execute('PRAGMA foreign_key_list("' + t + '")').fetchall()) for t in cantidades)
    assert fk == 17, fk

    lista = consultas()
    assert len(lista) == 10
    resultados = [conexion.execute(sql).fetchall() for sql in lista]
    esperados = [3, 2, 5, 10, 28, 6, 10, 10, 3, 3]
    assert [len(r) for r in resultados] == esperados
    assert {r[0] for r in resultados[0]} == {"Andres", "Juan", "Pedro"}
    assert [r[-1] for r in resultados[1]] == [20, 25]
    assert {r[0] for r in resultados[2]} == {"Laura", "Maria", "Daniel", "Camila", "Pedro"}
    assert {r[0] for r in resultados[4]} == set(range(1, 31)) - {1, 7}
    assert {r[0] for r in resultados[5]} == {22, 23, 24, 27, 28, 29}
    assert {r[0] for r in resultados[6]} == set(range(1, 11))
    assert {r[0] for r in resultados[7]} == set(range(21, 31))
    assert [r[0] for r in resultados[8]] == [7, 10, 6]
    assert {r[0] for r in resultados[9]} == {3, 6, 9}

    # Casos inválidos: las restricciones deben rechazar cada operación.
    invalidas = [
        "INSERT INTO animal VALUES (999, 999, 'Prueba', 'Criollo', 'Macho')",
        "INSERT INTO factura VALUES (999, 1, 1001, 100)",
        "INSERT INTO inventario VALUES (999, 1, 1)",
        "INSERT INTO historial_clinico VALUES (999, 1, 9999, '2026-01-01')",
        "INSERT INTO veterinario VALUES (999, 'PRUEBA', 'General')",
        "INSERT INTO animal VALUES (1, 1, 'Duplicado', 'Criollo', 'Macho')",
    ]
    for sql in invalidas:
        conexion.execute("SAVEPOINT prueba")
        try:
            conexion.execute(sql)
        except sqlite3.IntegrityError:
            pass
        else:
            raise AssertionError("Se aceptó una operación inválida: " + sql)
        finally:
            conexion.execute("ROLLBACK TO prueba")
            conexion.execute("RELEASE prueba")

    conexion.execute("SAVEPOINT observacion_opcional")
    conexion.execute("UPDATE registro_clinico SET observacion=NULL WHERE id_registro=1")
    assert conexion.execute("SELECT observacion FROM registro_clinico WHERE id_registro=1").fetchone() == (None,)
    conexion.execute("ROLLBACK TO observacion_opcional")
    conexion.execute("RELEASE observacion_opcional")

    print("Motor de la demostración: SQLite " + sqlite3.sqlite_version)
    print("18 tablas, 17 claves foráneas y 230 registros; mínimo por tabla: 10.")
    print("Sin referencias huérfanas. PK, tres UK y observación opcional comprobadas.")
    print("Filas por consulta: " + ", ".join(map(str, esperados)))
    print("Las diez consultas devuelven los resultados esperados.")
    print("La ejecución nativa en MySQL se realiza con los scripts de SQL/README.md.")


if __name__ == "__main__":
    db = crear_demo()
    try:
        comprobar(db)
    finally:
        db.close()
