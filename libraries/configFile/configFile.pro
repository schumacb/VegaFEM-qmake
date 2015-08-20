
TARGET = configFile
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    configFile.h

SOURCES += \
    configFile.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
