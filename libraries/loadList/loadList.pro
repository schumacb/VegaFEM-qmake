
TARGET = loadList
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    loadList.h

SOURCES += \
    loadList.cpp
    
unix {
    target.path = /usr/lib
    INSTALLS += target
}
