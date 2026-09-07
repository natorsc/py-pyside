# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtSql, QtWidgets

CREATE_TABLE_USER = """CREATE TABLE IF NOT EXISTS user_account (
id serial PRIMARY KEY,
name VARCHAR(32) NOT NULL,
username VARCHAR(32) NOT NULL
);"""

application = QtWidgets.QApplication(sys.argv)

db = QtSql.QSqlDatabase.addDatabase("QPSQL")
db.setHostName("localhost")
db.setPort(5432)
db.setDatabaseName("database_name")
db.setUserName("dbuser")
db.setPassword("123456")

print("PySide6 drivers:")
print(db.drivers())

if not db.open():
    print(f"Error connecting to database: {db.lastError().text()}")
    sys.exit(1)

query = QtSql.QSqlQuery(db)

print("Databases:")
print(db.database().tables())

if "user_account" in db.database().tables():
    print("Table already exists")
else:
    print("Creating table")
    query.exec(CREATE_TABLE_USER)
    if query.lastError().isValid():
        print(f"Error creating table: {query.lastError().text()}")
        sys.exit(1)
    else:
        print("Table created successfully")

query.prepare("INSERT INTO user_account (name, username) VALUES (?, ?)")
query.addBindValue("Renato")
query.addBindValue("natorsc")
query.exec()

if query.lastError().isValid():
    print(f"Insert failed: {query.lastError().text()}")
    sys.exit(1)
else:
    print("Insert successful")
