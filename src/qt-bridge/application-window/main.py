"""."""
import sys
from QtBridge import qtbridge

@qtbridge(module="qml", type_name="Main", import_paths=["."])
def main() -> None:
    pass


if __name__ == '__main__':
    sys.exit(main())
