
TARGET = hashTable
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    hashTable.h

SOURCES += \
    hashTable.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
