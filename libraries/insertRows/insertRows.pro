
TARGET = insertRows
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    insertRows.h

SOURCES += \
    insertRows.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
