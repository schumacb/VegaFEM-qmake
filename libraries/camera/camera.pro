
TARGET = camera
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    camera.h

SOURCES += \
    camera.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
