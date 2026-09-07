import pathlib
import subprocess

BASE_DIR = pathlib.Path(__file__).resolve().parent
INPUT = BASE_DIR.parent


def format_qml():
    print('[!] Formatting *qml files, please wait... [!]')
    print('Formatted Files:')
    for file in INPUT.rglob('*.qml'):
        if file.is_file() and file.suffix == '.qml':
            print(f'\n{file}')
            result = subprocess.run(
                args=[
                    'pyside6-qmlformat',
                    '-i',
                    '-n',
                    '--objects-spacing',
                    '--functions-spacing',
                    file,
                ],
                check=False,
            )
            print(f'Return Code: {result.returncode}.')
            # print(f'Standard Output: {result.stdout}.')
            # print(f'Standard Error: {result.stderr}.')
    print('[!] Done [!]')


def format_qml_bulk():
    print('[!] Formatting `*qml` files, please wait... [!]')
    cmd = [
        'pyside6-qmlformat',
        '-i',
        '-n',
        '--objects-spacing',
        '--functions-spacing',
    ]
    for file in INPUT.rglob('*.qml'):
        if file.is_file() and file.suffix == '.qml':
            cmd.append(str(file))
    result = subprocess.run(
        args=cmd,
        capture_output=True,
        check=True,
        text=True,
    )
    print(f'Return Code: {result.returncode}.')
    # print(f'Standard Output: {result.stdout}.')
    # print(f'Standard Error: {result.stderr}.')
    print('[!] Done [!]')


if __name__ == '__main__':
    pass
