import pathlib
import subprocess

SCRIPT_DIR = pathlib.Path(__file__).resolve().parent
ROOT_DIR = SCRIPT_DIR.parent
SRC_DIR = ROOT_DIR / "src"


def format_qml():
    print("[!] Formatting *qml files, please wait... [!]")
    print("Formatted Files:")
    for file in SRC_DIR.rglob("*.qml"):
        if file.is_file() and file.suffix == ".qml":
            print(f"\n{file}")
            result = subprocess.run(
                args=[
                    "pyside6-qmlformat",
                    "-i",
                    "-n",
                    "-S",  # Ordena imports alfabeticamente
                    "--objects-spacing",
                    "--functions-spacing",
                    file,
                ],
                check=False,
            )
            print(f"Return Code: {result.returncode}.")
            # print(f'Standard Output: {result.stdout}.')
            # print(f'Standard Error: {result.stderr}.')
    print("[!] Done [!]")


def format_qml_bulk():
    print("[!] Localizando arquivos .qml...")
    # Encontra todos os arquivos .qml dentro da pasta src
    qml_files = [str(file) for file in SRC_DIR.rglob("*.qml") if file.is_file()]

    if not qml_files:
        print("[!] Nenhum arquivo .qml encontrado.")
        return

    print(f"[!] Formatando {len(qml_files)} arquivos .qml...")

    cmd = [
        "pyside6-qmlformat",
        "-i",
        "-n",
        "-S",  # Ordena imports alfabeticamente
        "--objects-spacing",
        "--functions-spacing",
        *qml_files,  # Desempacota a lista de arquivos no comando
    ]

    try:
        result = subprocess.run(args=cmd, capture_output=True, check=True, text=True)
        print(f"[✔] Sucesso! Código de retorno: {result.returncode}")
    except subprocess.CalledProcessError as e:
        print(f"[✘] Erro ao formatar os arquivos: {e.stderr}")


if __name__ == "__main__":
    # format_qml()
    format_qml_bulk()
