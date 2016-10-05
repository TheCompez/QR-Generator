TEMPLATE = app

QT += qml quick widgets webengine printsupport

CONFIG += c++14
SOURCES += main.cpp \
    generator/generator.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    generator/generator.h


 ICON = app.icns
 RC_FILE = app.rc
