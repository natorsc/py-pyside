# -*- coding: utf-8 -*-
"""# Driver QPSQL

## Arch Linux

```bash
sudo pacman -S \
postgresql-libs
```
"""

import sys

from PySide6 import QtSql, QtWidgets

TABLE_NAME = 'table_namee'
CREATE_TABLE_USER = f"""CREATE TABLE IF NOT EXISTS {TABLE_NAME} (
id serial PRIMARY KEY,
name VARCHAR(32) NOT NULL,
username VARCHAR(32) NOT NULL
);"""

application = QtWidgets.QApplication(sys.argv)

db = QtSql.QSqlDatabase.addDatabase('QPSQL', 'pg_connection')
db.setHostName('localhost')
db.setDatabaseName('database_name')
db.setUserName('dbuser')
db.setPassword('123456')

print(db.drivers())

if not db.open():
    print('Error connecting to database:', db.lastError().text())
    sys.exit(1)

query = QtSql.QSqlQuery(db)
query.exec(CREATE_TABLE_USER)
