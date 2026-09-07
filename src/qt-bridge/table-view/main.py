"""."""

import json
import sys

from QtBridge import bridge_instance, qtbridge


class UserModel:
    def __init__(self):
        self._rows = [
            {"name": "Bruno Souza", "age": 35},
            {"name": "Carla Oliveira", "age": 22},
            {"name": "Diego Ferreira", "age": 41},
        ]

    def data(self) -> list[dict]:
        return self._rows


@qtbridge(module="qml", type_name="Main", import_paths=["."])
def main() -> None:
    # QML requires type names to start with an uppercase letter.
    bridge_instance(obj=UserModel(), name="Users")


if __name__ == "__main__":
    sys.exit(main())
