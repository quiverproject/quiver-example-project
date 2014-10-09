QT       += core qml quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QuiverExample
TEMPLATE = app
CONFIG += c++11

include(Quiver/Quiver.pri)


SOURCES += main.cpp

OTHER_FILES += \
    qml/QuiverExample/osx/main.qml \
    qml/QuiverExample/osx/MainUI.qml \
    qml/QuiverExample/osx/MainMenu.qml

# Add more folders to ship with the application, here
folder_01.source = qml/QuiverExample
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Default rules for deployment.
include(deployment.pri)
