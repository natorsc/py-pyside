# -*- coding: utf-8 -*-
"""."""

import sys

from QtBridge import bridge_instance, qtbridge


class FruitModel:
    def data(self) -> list[str]:
        return ["Apple", "Banana", "Cherry"]


@qtbridge(module="qml", type_name="Main", import_paths=["."])
def main() -> None:
    # QML requires type names to start with an uppercase letter.
    bridge_instance(obj=FruitModel(), name="Fruits")


if __name__ == "__main__":
    sys.exit(main())
