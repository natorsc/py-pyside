# -*- coding: utf-8 -*-
"""."""

import pathlib
import subprocess

APP_NAME = 'br.com.justcode.Qt'

BASE_DIR = pathlib.Path(__file__).resolve().parent

RESOURCES_DIR = BASE_DIR / 'resources'
LOCALES_DIR = RESOURCES_DIR / 'locales'
APP_DIR = BASE_DIR / 'app'

QRC_FILE = RESOURCES_DIR / 'resources.qrc'

SRC_LANG = 'en_US'
TGT_LANG = ['pt_BR']


def main() -> None:
    create_or_update_translations()
    compile_translations()
    create_resources()


def create_or_update_translations() -> None:
    print('[!] Updating the translations (*.ts), please wait... [!]')
    for lang in TGT_LANG:
        output = LOCALES_DIR.joinpath(f'{APP_NAME}.{lang}.ts')
        output.parent.mkdir(parents=True, exist_ok=True)
        subprocess.run(
            args=[
                'pyside6-lupdate',
                '-silent',
                '-no-obsolete',
                '-extensions',
                'py',
                '-source-language',
                SRC_LANG,
                '-target-language',
                lang,
                BASE_DIR,
                '-ts',
                output,
            ],
            check=False,
        )
    print('[!] Done [!]')


def compile_translations() -> None:
    print('[!] Compiling the translations (*.qm), please wait... [!]')
    for file in LOCALES_DIR.rglob('*.ts'):
        if file.is_file() and file.suffix == '.ts':
            output = file.parent.joinpath(f'{file.stem}.qm')
            subprocess.run(
                args=['pyside6-lrelease', '-silent', file, output],
                check=False,
            )
    print('[!] Done [!]')


def create_resources() -> None:
    print('[!] Creating resources, please wait... [!]')
    output = APP_DIR / 'resources_rc.py'
    subprocess.run(
        args=['pyside6-rcc', QRC_FILE, '-o', output],
        check=False,
    )
    print('[!] Done [!]')


if __name__ == '__main__':
    main()
