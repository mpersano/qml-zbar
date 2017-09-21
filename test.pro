QT += qml quick multimedia

TEMPLATE = app
TARGET = test
CONFIG += debug
INCLUDEPATH += .

HEADERS += qrcodevideofilter.h
SOURCES += main.cpp qrcodevideofilter.cpp
RESOURCES += test.qrc

CONFIG += link_pkgconfig
PKGCONFIG += zbar
