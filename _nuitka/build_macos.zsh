nuitka \
--standalone \
--follow-imports \
--enable-plugin=pyside6 \
--include-qt-plugins=qml \
--assume-yes-for-downloads \
--output-dir=build \
--macos-create-app-bundle \
--macos-app-icon=icon-name.icns \
main.py