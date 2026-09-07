# -*- coding: utf-8 -*-
"""."""

import pathlib
import subprocess

APP_NAME = "br.com.justcode.Qt"

BASE_DIR = pathlib.Path(__file__).resolve().parent
LOCALES_DIR = BASE_DIR / "locales"

SOURCE_LANGUAGE = "en_US"
TARGET_LANGUAGES = ["pt_BR"]


def main() -> None:
    create_or_update_translations()
    compile_translations()


def create_or_update_translations() -> None:
    print("[!] Updating the translations (*.ts), please wait... [!]")
    for lang in TARGET_LANGUAGES:
        output = LOCALES_DIR.joinpath(f"{APP_NAME}.{lang}.ts")
        output.parent.mkdir(parents=True, exist_ok=True)
        result = subprocess.run(
            args=[
                "pyside6-lupdate",
                "-no-obsolete",
                "-extensions",
                "py,qml",
                "-source-language",
                SOURCE_LANGUAGE,
                "-target-language",
                lang,
                BASE_DIR,
                "-ts",
                output,
            ],
            capture_output=True,
            check=True,
            text=True,
        )
        print(f"Return Code: {result.returncode}.")
        # print(f'Standard Output: {result.stdout}.')
        # print(f'Standard Error: {result.stderr}.')
    print("[!] Done [!]\n")


def compile_translations() -> None:
    print("[!] Compiling the translations (*.qm), please wait... [!]")
    for file in LOCALES_DIR.rglob("*.ts"):
        if file.is_file() and file.suffix == ".ts":
            output = file.parent.joinpath(f"{file.stem}.qm")
            result = subprocess.run(
                args=["pyside6-lrelease", file, output],
                check=False,
            )
            print(f"Return Code: {result.returncode}.")
            # print(f'Standard Output: {result.stdout}.')
            # print(f'Standard Error: {result.stderr}.')
    print("[!] Done [!]\n")


if __name__ == "__main__":
    main()
