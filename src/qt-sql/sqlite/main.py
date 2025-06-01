# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtSql, QtWidgets

BASE_DIR = QtCore.QDir(QtCore.QFileInfo(__file__).absolutePath())
DATABASE = BASE_DIR.filePath('database.sqlite3')

TABLE_NAME = 'table_name'
CREATE_TABLE_USER = f"""CREATE TABLE {TABLE_NAME} (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
username TEXT NOT NULL
);
"""

application = QtWidgets.QApplication(sys.argv)

db = QtSql.QSqlDatabase.addDatabase('QSQLITE')
db.setDatabaseName(DATABASE)

print(db.drivers())

if not db.open():
    print(f'Error connecting to database: {db.lastError().text()}')
    sys.exit(1)

query = QtSql.QSqlQuery(db)

if TABLE_NAME in db.database().tables():
    print('Table already exists')
else:
    print('Creating table')
    query.exec(CREATE_TABLE_USER)
    if query.lastError().isValid():
        print(f'Error creating table: {query.lastError().text()}')
        sys.exit(1)
    else:
        print('Table created successfully')

query.prepare(f'INSERT INTO {TABLE_NAME} (name, username) VALUES (?, ?)')
query.addBindValue('Renato')
query.addBindValue('natorsc')
query.exec()

if query.lastError().isValid():
    print(f'Insert failed: {query.lastError().text()}')
    sys.exit(1)
else:
    print('Insert successful')
