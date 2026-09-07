# Build Beautiful GUIs with Python (PySide) and Qt framework

![Creating graphical interfaces with Python (PySide) and Qt.](docs/images/py-pyside.webp "Creating graphical interfaces with Python (PySide) and Qt.")

[![natorsc - py-pyside](https://img.shields.io/static/v1?label=natorsc&message=py-pyside&color=blue&logo=github)](https://github.com/natorsc/py-pyside)
[![stars - py-pyside](https://img.shields.io/github/stars/natorsc/py-pyside?style=social)](https://github.com/natorsc/py-pyside)
[![forks - py-pyside](https://img.shields.io/github/forks/natorsc/py-pyside?style=social)](https://github.com/natorsc/py-pyside)
[![License MIT](https://img.shields.io/static/v1?label=License&message=MIT&color=blue)](./LICENSE)

## ✨ About this project

This repository is your complete guide to building sleek, modern graphical user interfaces with Python (PySide) and Qt framework. Whether you're a beginner or an experienced developer, you'll find practical tutorials, tips, and real code examples to level up your projects.

If this content has helped you, please consider making a donation. Your support makes a real difference and helps the project grow! 💙

## 🛠 Technologies used

[![Python](https://img.shields.io/badge/-Python-blue?logo=python&logoColor=white)](https://www.python.org/)
[![Qt](https://img.shields.io/badge/-Qt-blue?logo=gtk&logoColor=white)](https://www.qt.io/)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)

## 👨‍💻 Author

Crafted with 💙 by Renato Cruz. Got questions or feedback? Reach out anytime!

[![Email](https://img.shields.io/badge/-Email-blueviolet?logo=gmail&logoColor=white)](mailto:natorsc@gmail.com)

What I'm listening to while I code or study 😎🎵:

[![Spotify](https://img.shields.io/badge/-Spotify-darkgreen?logo=spotify&logoColor=white)](https://open.spotify.com/playlist/1xf3u29puXlnrWO7MsaHL5)

## 💝 Support This Project

Your donation keeps this project alive and helps me continue creating and sharing useful content.

### GitHub Sponsors

[https://github.com/sponsors/natorsc/](https://github.com/sponsors/natorsc/)

### Pix (Brazil)

`b1839493-2afe-484d-9272-82a3e402b36f`

## Desenvolvimento

### uv

O projeto utiliza `uv` para gerenciamento do ambiente virtual, dependências e lockfile.

#### Formatar o código

```bash
uv format
```

#### Verificar atualizações

Listar os pacotes com atualizações disponíveis:

```bash
uv tree --outdated --depth=1
```

Atualizar um pacote específico:

```bash
uv lock --upgrade-package nome_do_pacote
```

Sincronizar o ambiente com o `uv.lock`:

```bash
uv sync
```

### Ruff

O [Ruff](https://github.com/astral-sh/ruff) é utilizado para verificação e formatação do código Python.

#### Verificar e formatar o código

```bash
uvx ruff check . --fix && uvx ruff format .
```

### PySide6

```bash
uvx ruff check . --fix && uvx ruff format .
```

---

## 💡 Extra

### Qt Bridge

- [Github](https://github.com/qt/qtbridge-python).

### Qt

- [Documentation Qt 6](https://doc.qt.io/qt-6/).

### Kirigami

- [Kirigami](https://api.kde.org/frameworks/kirigami/html/).

### KDE

- [Official website](https://kde.org/).
- [Blogs](https://blogs.kde.org/).

### Softwares

- [KDE Apps](https://apps.kde.org/).

### PySide6

Main commands:

- `pyside6-android-deploy`.
- `pyside6-assistant`.
- `pyside6-balsam`.
- `pyside6-balsamui`.
- `pyside6-deploy`.
- `pyside6-designer`.
- `pyside6-genpyi`.
- `pyside6-linguist`.
- `pyside6-lrelease`.
- `pyside6-lupdate`.
- `pyside6-metaobjectdump`.
- `pyside6-project`.
- `pyside6-qml`.
- `pyside6-qmlcachegen`.
- `pyside6-qmlformat`.
- `pyside6-qmlimportscanner`.
- `pyside6-qmllint`.
- `pyside6-qmlls`.
- `pyside6-qmltyperegistrar`.
- `pyside6-qsb`.
- `pyside6-qtpy2cpp`.
- `pyside6-rcc`.
- `pyside6-svgtoqml`.
- `pyside6-uic`.

---

## Flatpak

### Pip generator

- [flatpak-pip-generator](https://github.com/flatpak/flatpak-builder-tools/blob/master/pip/flatpak-pip-generator.py)

### PySide6

- [PySide.BaseApp](https://github.com/flathub/io.qt.PySide.BaseApp).

> `flatpak install org.kde.Platform/x86_64/6.9 org.kde.Sdk/x86_64/6.9`

Example:

```json
{
  "id": "com.github.natorsc.AppName",
  "runtime": "org.kde.Platform",
  "runtime-version": "6.9",
  "sdk": "org.kde.Sdk",
  "base": "io.qt.PySide.BaseApp",
  "base-version": "6.9",
  "command": "app-name",
  "cleanup-commands": [
    "- /app/cleanup-BaseApp.sh"
  ],
  "finish-args": [
    "--share=ipc",
    "--socket=wayland",
    "--socket=x11",
    "--socket=pulseaudio",
    "--device=dri"
  ],
  "modules": [
    {
      "name": "app-name",
      "buildsystem": "simple",
      "build-commands": [
        "pip3 install --verbose --exists-action=i --no-index --find-links=\"file://${PWD}\" --prefix=${FLATPAK_DEST} \"app_name\" --no-build-isolation"
      ],
      "sources": [
        {
          "type": "file",
          "path": "./dist/app_name-0.1.0-py3-none-any.whl"
        }
      ]
    }
  ]
}
```

### PyQt6

- [PyQt.BaseApp](https://github.com/flathub/com.riverbankcomputing.PyQt.BaseApp).

Example:

```json
{
  "id": "com.github.natorsc.AppName",
  "runtime": "org.kde.Platform",
  "runtime-version": "6.9",
  "sdk": "org.kde.Sdk",
  "base": "com.riverbankcomputing.PyQt.BaseApp",
  "base-version": "6.9",
  "command": "app-name",
  "cleanup-commands": [
    "- /app/cleanup-BaseApp.sh"
  ],
  "finish-args": [
    "--share=ipc",
    "--socket=wayland",
    "--socket=x11",
    "--socket=pulseaudio",
    "--device=dri"
  ],
  "modules": [
    {
      "name": "app-name",
      "buildsystem": "simple",
      "build-commands": [
        "pip3 install --verbose --exists-action=i --no-index --find-links=\"file://${PWD}\" --prefix=${FLATPAK_DEST} \"app_name\" --no-build-isolation"
      ],
      "sources": [
        {
          "type": "file",
          "path": "./dist/app_name-0.1.0-py3-none-any.whl"
        }
      ]
    }
  ]
}
```

---

## Github actions

> If necessary, create a file for each operating system.

```yml
name: Deploying PySide6 with Nuitka ⚙️.
on:
  push:
    branches: ['main']
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: 'deploy'
  cancel-in-progress: true

jobs:
  build:
    strategy:
      matrix:
        os: [ubuntu-latest, macos-latest, windows-latest]
    runs-on: '${{ matrix.os }}'
    steps:
      - name: Check out repository 💾.
        uses: actions/checkout@v5
      
      - name: Install Python 🐍.
        uses: actions/setup-python@v5
        with:
            python-version: '3.11'
            architecture: 'x64'
            cache: 'pip'
            cache-dependency-path: |
              **/requirements*.txt

      - name: Install requirements 🔨.
        working-directory: .
        run: python -m pip install --upgrade pip && pip install -r requirements.txt

      - name: Install and configure Nuitka 🛠️.
        uses: Nuitka/Nuitka-Action@main
        with:
          nuitka-version: main
          script-name: path/to/the/script.py
          enable-plugins: pyside6
          quiet: true
          standalone: true
          disable-console: true
          macos-create-app-bundle: true
          output-file: nome-do-aplicativo
          linux-icon: path/to/the/icon.ico
          windows-icon-from-ico: path/to/the/icon.ico
          macos-app-icon: path/to/the/con.icns
          macos-app-name: nome-do-aplicativo

      - name: Upload artifact (onefile) 🚀.
        uses: actions/upload-artifact@v4
        with:
          name: '${{ runner.os }}-build'
          path: |
            build/app.dist
            build/*.exe
            build/*.bin
            build/*.app/**/*
```

---

## QtSql

### QSQLITE (SQLite3)

- [Python](src/qt-sql/sqlite/main.py).

### QPSQL (PostgreSQL)

- [Python](src/qt-sql/postgres/main.py).
- [Docker compose](src/qt-sql/postgres/docker-compose.yml).

#### Arch Linux

```bash
sudo pacman -S \
postgresql-libs
```

#### QMARIADB (MariaDB)

- [Python](src/qt-sql/mariadb/main.py).
- [Docker compose](src/qt-sql/mariadb/docker-compose.yml).

#### Arch Linux

```bash
sudo pacman -S \
mariadb-libs
```

#### QMYSQL (MySQL)

- [Python](src/qt-sql/mysql/main.py).
- [Docker compose](src/qt-sql/mysql/docker-compose.yml).

#### Arch Linux

```bash
sudo pacman -S \
mariadb-libs
```

---

## Qt Bridge

ToDo

---

## KDE Kirigami

Kirigami is a KDE UI (User Interface) framework designed to make it easier to create convergent and responsive applications.

> The Kirigami framework cannot be used within virtual environments (venv, poetry, pdm, uv, etc).

## Dependências

### Arch Linux

```bash
sudo pacman -S \
python-lsp-server \
pyside6 \
kirigami \
flatpak-builder \
qqc2-desktop-style \
appstream
```

> PyQt6: `sudo pacman -S python-pyqt6`.

### Fedora

```bash
sudo dnf install \
python3-lsp-server \
python3-pyside6 \
kf6-kirigami-devel \
flatpak-builder \
qqc2-desktop-style \
appstream-compose
```

> PyQt6: `sudo dnf install python3-pyqt6`.

### openSuse

```bash
sudo zypper install \
python3-qt6 \
python3-pyside6 \
kf6-kirigami-devel \
flatpak-builder \
qqc2-desktop-style \
AppStream-compose
```

> PyQt6: `sudo zypper install python-PyQt6`.

### Abstract card

![Abstract card](docs/images/kde-kirigami/abstract-card.webp "Abstract card")

Code:

- [Python](src/kde-kirigami/abstract-card/main.py).
- [QML](src/kde-kirigami/abstract-card/qml/main.qml).

### Application window

![Application window](docs/images/kde-kirigami/application-window.webp "Application window")

Code:

- [Python](src/kde-kirigami/application-window/main.py).
- [QML](src/kde-kirigami/application-window/qml/main.qml).

### Card

![Card](docs/images/kde-kirigami/card.webp "Card")

Code:

- [Python](src/kde-kirigami/card/main.py).
- [QML](src/kde-kirigami/card/qml/main.qml).

### Chips

![Chips](docs/images/kde-kirigami/chips.webp "Chips")

Code:

- [Python](src/kde-kirigami/chips/main.py).
- [QML](src/kde-kirigami/chips/qml/main.qml).

### Dialog

![Dialog](docs/images/kde-kirigami/dialog.webp "Dialog")

Code:

- [Python](src/kde-kirigami/dialog/main.py).
- [QML](src/kde-kirigami/dialog/qml/main.qml).

### Dialog menu

![Dialog menu](docs/images/kde-kirigami/dialog-menu.webp "Dialog menu")

Code:

- [Python](src/kde-kirigami/dialog-menu/main.py).
- [QML](src/kde-kirigami/dialog-menu/qml/main.qml).

### Dialog prompt

![Dialog prompt](docs/images/kde-kirigami/dialog-prompt.webp "Dialog prompt")

Code:

- [Python](src/kde-kirigami/dialog-prompt/main.py).
- [QML](src/kde-kirigami/dialog-prompt/qml/main.qml).

### Global drawer

![Global drawer](docs/images/kde-kirigami/global-drawer.webp "Global drawer")

Code:

- [Python](src/kde-kirigami/global-drawer/main.py).
- [QML](src/kde-kirigami/global-drawer/qml/main.qml).

### Global drawer context

> ToDo.

![Global drawer context](docs/images/kde-kirigami/global-drawer-context.webp "Global drawer context")

Code:

- [Python](src/kde-kirigami/global-drawer-context/main.py).
- [QML](src/kde-kirigami/global-drawer-context/qml/main.qml).

### Global drawer desktop

![Global drawer desktop](docs/images/kde-kirigami/global-drawer-desktop.webp "Global drawer desktop")

Code:

- [Python](src/kde-kirigami/global-drawer-desktop/main.py).
- [QML](src/kde-kirigami/global-drawer-desktop/qml/main.qml).

### Global drawer header

![Global drawer header](docs/images/kde-kirigami/global-drawer-header.webp "Global drawer header")

Code:

- [Python](src/kde-kirigami/global-drawer-header/main.py).
- [QML](src/kde-kirigami/global-drawer-header/qml/main.qml).

### Overlay drawer

![Overlay drawer](docs/images/kde-kirigami/overlay-drawer.webp "Overlay drawer")

Code:

- [Python](src/kde-kirigami/overlay-drawer/main.py).
- [QML](src/kde-kirigami/overlay-drawer/qml/main.qml).

---

<br>

## Qt Quick

### Application window

![Application window](docs/images/qt-quick/application-window.webp "Application window")

Code:

- [Python](src/qt-quick/application-window/main.py).
- [QML](src/qt-quick/application-window/qml/main.qml).

---

### Busy indicator

![Busy indicator](docs/images/qt-quick/busy-indicator.webp "Busy indicator")

Code:

- [Python](src/qt-quick/busy-indicator/main.py).
- [QML](src/qt-quick/busy-indicator/qml/main.qml).

---

### Button

![Button](docs/images/qt-quick/button.webp "Button")

Code:

- [Python](src/qt-quick/button/main.py).
- [QML](src/qt-quick/button/qml/main.qml).

---

### Button group

![Button group](docs/images/qt-quick/button-group.webp "Button group")

Code:

- [Python](src/qt-quick/button-group/main.py).
- [QML](src/qt-quick/button-group/qml/main.qml).

---

### Charts

**Arch Linux**:

```bash
sudo pacman -S \
qt6-charts
```

**Fedora**:

```bash
sudo dnf install \
qt6-charts
```

**Ubuntu 25.04**:

```bash
sudo apt install \
qml6-module-qtcharts
```

---

#### Area series

![Area series](docs/images/qt-quick/charts-area-series.webp "Area series")

Code:

- [Python](src/qt-quick/charts/area-series/main.py)
- [QML](src/qt-quick/charts/area-series/qml/main.qml)

---

#### Bar series

![Bar series](docs/images/qt-quick/charts-bar-series.webp "Bar series")

Code:

- [Python](src/qt-quick/charts/bar-series/main.py)
- [QML](src/qt-quick/charts/bar-series/qml/main.qml)

---

#### Horizontal bar series

![Horizontal bar series](docs/images/qt-quick/charts-horizontal-bar-series.webp "Horizontal bar series")

Code:

- [Python](src/qt-quick/charts/horizontal-bar-series/main.py)
- [QML](src/qt-quick/charts/horizontal-bar-series/qml/main.qml)

---

#### Horizontal percent bar series

![Horizontal percent bar series](docs/images/qt-quick/charts-horizontal-percent-bar-series.webp "Horizontal percent bar series")

Code:

- [Python](src/qt-quick/charts/horizontal-percent-bar-series/main.py)
- [QML](src/qt-quick/charts/horizontal-percent-bar-series/qml/main.qml)

---

#### Horizontal stacked bar series

![Horizontal stacked bar series](docs/images/qt-quick/charts-horizontal-stacked-bar-series.webp "Horizontal stacked bar series")

Code:

- [Python](src/qt-quick/charts/horizontal-stacked-bar-series/main.py)
- [QML](src/qt-quick/charts/horizontal-stacked-bar-series/qml/main.qml)

---

#### Line series

![Line series](docs/images/qt-quick/charts-line-series.webp "Line series")

Code:

- [Python](src/qt-quick/charts/line-series/main.py)
- [QML](src/qt-quick/charts/line-series/qml/main.qml)

---

#### Percent bar series

![Percent bar series](docs/images/qt-quick/charts-percent-bar-series.webp "Percent bar series")

Code:

- [Python](src/qt-quick/charts/percent-bar-series/main.py)
- [QML](src/qt-quick/charts/percent-bar-series/qml/main.qml)

---

#### Pie donut series

![Pie donut series](docs/images/qt-quick/charts-pie-donut-series.webp "Pie donut series")

Code:

- [Python](src/qt-quick/charts/pie-donut-series/main.py)
- [QML](src/qt-quick/charts/pie-donut-series/qml/main.qml)

---

#### Pie series

![Pie series](docs/images/qt-quick/charts-pie-series.webp "Pie series")

Code:

- [Python](src/qt-quick/charts/pie-series/main.py)
- [QML](src/qt-quick/charts/pie-series/qml/main.qml)

---

#### Scatter series

![Scatter series](docs/images/qt-quick/charts-scatter-series.webp "Scatter series")

Code:

- [Python](src/qt-quick/charts/scatter-series/main.py)
- [QML](src/qt-quick/charts/scatter-series/qml/main.qml)

---

#### Spline series

![Spline series](docs/images/qt-quick/charts-spline-series.webp "Spline series")

Code:

- [Python](src/qt-quick/charts/spline-series/main.py)
- [QML](src/qt-quick/charts/spline-series/qml/main.qml)

---

#### Stacked bar series

![Stacked bar series](docs/images/qt-quick/charts-stacked-bar-series.webp "Stacked bar series")

Code:

- [Python](src/qt-quick/charts/stacked-bar-series/main.py)
- [QML](src/qt-quick/charts/stacked-bar-series/qml/main.qml)

---

### Check box

![Check box](docs/images/qt-quick/check-box.webp "Check box")

Code:

- [Python](src/qt-quick/check-box/main.py).
- [QML](src/qt-quick/check-box/qml/main.qml).

---

### Check delegate

![Check delegate](docs/images/qt-quick/check-delegate.webp "Check delegate")

Code:

- [Python](src/qt-quick/check-delegate/main.py).
- [QML](src/qt-quick/check-delegate/qml/main.qml).

---

### Color dialog

![Color dialog](docs/images/qt-quick/color-dialog.webp "Color dialog")

Code:

- [Python](src/qt-quick/color-dialog/main.py).
- [QML](src/qt-quick/color-dialog/qml/main.qml).

---

### Column layout

![Column layout](docs/images/qt-quick/column-layout.webp "Column layout")

Code:

- [Python](src/qt-quick/column-layout/main.py).
- [QML](src/qt-quick/column-layout/qml/main.qml).

---

### Combo box

![Combo box](docs/images/qt-quick/combo-box.webp "Combo box")

Code:

- [Python](src/qt-quick/combo-box/main.py).
- [QML](src/qt-quick/combo-box/qml/main.qml).

---

### Day of week row

![Day of week row](docs/images/qt-quick/day-of-week-row.webp "Day of week row")

Code:

- [Python](src/qt-quick/day-of-week-row/main.py).
- [QML](src/qt-quick/day-of-week-row/qml/main.qml).

---

### Delay button

![Delay button](docs/images/qt-quick/delay-button.webp "Delay button")

Code:

- [Python](src/qt-quick/delay-button/main.py).
- [QML](src/qt-quick/delay-button/qml/main.qml).

---

### Dial

![Dial](docs/images/qt-quick/dial.webp "Dial")

Code:

- [Python](src/qt-quick/dial/main.py).
- [QML](src/qt-quick/dial/qml/main.qml).

---

### Dialog

![Dialog](docs/images/qt-quick/dialog.webp "Dialog")

Code:

- [Python](src/qt-quick/dialog/main.py).
- [QML](src/qt-quick/dialog/qml/main.qml).

---

### Drawer

![Drawer](docs/images/qt-quick/drawer.webp "Drawer")

Code:

- [Python](src/qt-quick/drawer/main.py).
- [QML](src/qt-quick/drawer/qml/main.qml).

---

### File dialog

![File dialog](docs/images/qt-quick/file-dialog.webp "File dialog")

Code:

- [Python](src/qt-quick/file-dialog/main.py).
- [QML](src/qt-quick/file-dialog/qml/main.qml).

---

### Folder dialog

![Folder dialog](docs/images/qt-quick/folder-dialog.webp "Folder dialog")

Code:

- [Python](src/qt-quick/folder-dialog/main.py).
- [QML](src/qt-quick/folder-dialog/qml/main.qml).

---

### Font dialog

![Font dialog](docs/images/qt-quick/font-dialog.webp "Font dialog")

Code:

- [Python](src/qt-quick/font-dialog/main.py).
- [QML](src/qt-quick/font-dialog/qml/main.qml).

---

### Frame

![Frame](docs/images/qt-quick/frame.webp "Frame")

Code:

- [Python](src/qt-quick/frame/main.py).
- [QML](src/qt-quick/frame/qml/main.qml).

---

### Grid Layout

![Grid Layout](docs/images/qt-quick/grid-layout.webp "Grid Layout")

Code:

- [Python](src/qt-quick/grid-layout/main.py).
- [QML](src/qt-quick/grid-layout/qml/main.qml).

---

### Group box

![Group box](docs/images/qt-quick/group-box.webp "Group box")

Code:

- [Python](src/qt-quick/group-box/main.py).
- [QML](src/qt-quick/group-box/qml/main.qml).

---

### Import QML file

![Import QML file](docs/images/qt-quick/import-qml-file.webp "Import QML file")

Code:

- [Python](src/qt-quick/import-qml-file/main.py).
- [QML](src/qt-quick/import-qml-file/qml/main.qml).

---

### Item delegate

![Item delegate](docs/images/qt-quick/item-delegate.webp "Item delegate")

Code:

- [Python](src/qt-quick/item-delegate/main.py).
- [QML](src/qt-quick/item-delegate/qml/main.qml).

---

### Layout item proxy

![Layout item proxy](docs/images/qt-quick/layout-item-proxy.webp "Layout item proxy")

Code:

- [Python](src/qt-quick/layout-item-proxy/main.py).
- [QML](src/qt-quick/layout-item-proxy/qml/main.qml).

---

### Message dialog

![Message dialog](docs/images/qt-quick/message-dialog.webp "Message dialog")

Code:

- [Python](src/qt-quick/message-dialog/main.py).
- [QML](src/qt-quick/message-dialog/qml/main.qml).

---

### Overlay

![Overlay](docs/images/qt-quick/overlay.webp "Overlay")

Code:

- [Python](src/qt-quick/overlay/main.py).
- [QML](src/qt-quick/overlay/qml/main.qml).

---

### Popup

![Popup](docs/images/qt-quick/popup.webp "Popup")

Code:

- [Python](src/qt-quick/popup/main.py).
- [QML](src/qt-quick/popup/qml/main.qml).

---

### Row layout

![Row layout](docs/images/qt-quick/row-layout.webp "Row layout")

Code:

- [Python](src/qt-quick/row-layout/main.py).
- [QML](src/qt-quick/row-layout/qml/main.qml).

---

### Set initial properties

> Todo

![Set initial properties](docs/images/qt-quick/set-initial-properties.webp "Set initial properties")

Code:

- [Python](src/qt-quick/set-initial-properties/main.py).
- [QML](src/qt-quick/set-initial-properties/qml/main.qml).

---

### Stack layout

![Stack layout](docs/images/qt-quick/stack-layout.webp "Stack layout")

Code:

- [Python](src/qt-quick/stack-layout/main.py).
- [QML](src/qt-quick/stack-layout/qml/main.qml).

---

### Text field

![Text field](docs/images/qt-quick/text-field.webp "Text field")

Code:

- [Python](src/qt-quick/text-field/main.py).
- [QML](src/qt-quick/text-field/qml/main.qml).

---

### Text input

![Text input](docs/images/qt-quick/text-input.webp "Text input")

Code:

- [Python](src/qt-quick/text-input/main.py).
- [QML](src/qt-quick/text-input/qml/main.qml).

---

### Translation

![Translation](docs/images/qt-quick/translation.webp "Translation")

Code:

- [Python](src/qt-quick/translation/main.py).
- [QML](src/qt-quick/translation/qml/main.qml).

---

### Tree view

![Tree view](docs/images/qt-quick/tree-view.webp "Tree view")

Code:

- [Python](src/qt-quick/tree-view/main.py).
- [QML](src/qt-quick/tree-view/qml/main.qml).

---

<br>

## Qt widgets

### QApplication

![QApplication](docs/images/qt-widgets/qapplication.webp "QApplication")

Code:

- [Python](src/qt-widgets/qapplication/MainWindow.py).

### QBoxLayout

![QBoxLayout](docs/images/qt-widgets/qboxlayout.webp "QBoxLayout")

Code:

- [Python](src/qt-widgets/qboxlayout/MainWindow.py).

### QButtonGroup

![QButtonGroup](docs/images/qt-widgets/qbuttongroup.webp "QButtonGroup")

Code:

- [Python](src/qt-widgets/qbuttongroup/MainWindow.py).

### QCalendarWidget

![QCalendarWidget](docs/images/qt-widgets/qcalendarwidget.webp "QCalendarWidget")

Code:

- [Python](src/qt-widgets/qcalendarwidget/MainWindow.py).

### QCheckBox

![QCheckBox](docs/images/qt-widgets/qcheckbox.webp "QCheckBox")

Code:

- [Python](src/qt-widgets/qcheckbox/MainWindow.py).

### QColorDialog

![QColorDialog](docs/images/qt-widgets/qcolordialog.webp "QColorDialog")

Code:

- [Python](src/qt-widgets/qcolordialog/MainWindow.py).

### QColumnView

![QColumnView](docs/images/qt-widgets/qcolumnview.webp "QColumnView")

Code:

- [Python](src/qt-widgets/qcolumnview/MainWindow.py).

### QComboBox

![QComboBox](docs/images/qt-widgets/qcombobox.webp "QComboBox")

Code:

- [Python](src/qt-widgets/qcombobox/MainWindow.py).

### QCompleter

![QCompleter](docs/images/qt-widgets/qcompleter.webp "QCompleter")

Code:

- [Python](src/qt-widgets/qcompleter/MainWindow.py).

### QDateEdit

![QDateEdit](docs/images/qt-widgets/qdateedit.webp "QDateEdit")

Code:

- [Python](src/qt-widgets/qdateedit/MainWindow.py).

### QDateTimeEdit

![QDateTimeEdit](docs/images/qt-widgets/qdatetimeedit.webp "QDateTimeEdit")

Code:

- [Python](src/qt-widgets/qdatetimeedit/MainWindow.py).

### QDial

![QDial](docs/images/qt-widgets/qdial.webp "QDial")

Code:

- [Python](src/qt-widgets/qdial/MainWindow.py).

### QDialog

![QDialog](docs/images/qt-widgets/qdialog.webp "QDialog")

Code:

- [Python](src/qt-widgets/qdialog/MainWindow.py).

### QDialogButtonBox

![QDialogButtonBox](docs/images/qt-widgets/qdialogbuttonbox.webp "QDialogButtonBox")

Code:

- [Python](src/qt-widgets/qdialogbuttonbox/MainWindow.py).

### QDockWidget

![QDockWidget](docs/images/qt-widgets/qdockwidget.webp "QDockWidget")

Code:

- [Python](src/qt-widgets/qdockwidget/MainWindow.py).

### QDoubleSpinBox

![QDoubleSpinBox](docs/images/qt-widgets/qdoublespinbox.webp "QDoubleSpinBox")

Code:

- [Python](src/qt-widgets/qdoublespinbox/MainWindow.py).

### QErrorMessage

![QErrorMessage](docs/images/qt-widgets/qerrormessage.webp "QErrorMessage")

Code:

- [Python](src/qt-widgets/qerrormessage/MainWindow.py).

### QFileDialog

![QFileDialog](docs/images/qt-widgets/qfiledialog.webp "QFileDialog")

Code:

- [Python](src/qt-widgets/qfiledialog/MainWindow.py).

### QFontComboBox

![QFontComboBox](docs/images/qt-widgets/qfontcombobox.webp "QFontComboBox")

Code:

- [Python](src/qt-widgets/qfontcombobox/MainWindow.py).

### QFontDialog

![QFontDialog](docs/images/qt-widgets/qfontdialog.webp "QFontDialog")

Code:

- [Python](src/qt-widgets/qfontdialog/MainWindow.py).

### QFormLayout

![QFormLayout](docs/images/qt-widgets/qformlayout.webp "QFormLayout")

Code:

- [Python](src/qt-widgets/qformlayout/MainWindow.py).

### QFrame

![QFrame](docs/images/qt-widgets/qframe.webp "QFrame")

Code:

- [Python](src/qt-widgets/qframe/MainWindow.py).

### QGridLayout

![QGridLayout](docs/images/qt-widgets/qgridlayout.webp "QGridLayout")

Code:

- [Python](src/qt-widgets/qgridlayout/MainWindow.py).

### QGroupBox

![QGroupBox](docs/images/qt-widgets/qgroupbox.webp "QGroupBox")

Code:

- [Python](src/qt-widgets/qgroupbox/MainWindow.py).

### QHBoxLayout

![QHBoxLayout](docs/images/qt-widgets/qhboxlayout.webp "QHBoxLayout")

Code:

- [Python](src/qt-widgets/qhboxlayout/MainWindow.py).

### QInputDialog

![QInputDialog](docs/images/qt-widgets/qinputdialog.webp "QInputDialog")

Code:

- [Python](src/qt-widgets/qinputdialog/MainWindow.py).

### QLabel

![QLabel](docs/images/qt-widgets/qlabel.webp "QLabel")

Code:

- [Python](src/qt-widgets/qlabel/MainWindow.py).

### QLCDNumber

![QLCDNumber](docs/images/qt-widgets/qlcdnumber.webp "QLCDNumber")

Code:

- [Python](src/qt-widgets/qlcdnumber/MainWindow.py).

### QLineEdit

![QLineEdit](docs/images/qt-widgets/qlineedit.webp "QLineEdit")

Code:

- [Python](src/qt-widgets/qlineedit/MainWindow.py).

### QListView

![QListView](docs/images/qt-widgets/qlistview.webp "QListView")

Code:

- [Python](src/qt-widgets/qlistview/MainWindow.py).

### QListWidget

![QListWidget](docs/images/qt-widgets/qlistwidget.webp "QListWidget")

Code:

- [Python](src/qt-widgets/qlistwidget/MainWindow.py).

### QMainWindow

![QMainWindow](docs/images/qt-widgets/qmainwindow.webp "QMainWindow")

Code:

- [Python](src/qt-widgets/qmainwindow/MainWindow.py).

### QSystemTrayIcon

![QSystemTrayIcon](docs/images/qt-widgets/qsystemtrayicon.webp "QSystemTrayIcon")

Code:

- [Python](src/qt-widgets/QSystemTrayIcon/MainWindow.py).

---
