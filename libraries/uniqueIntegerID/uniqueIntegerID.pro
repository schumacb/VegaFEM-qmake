
TARGET = uniqueIntegerID
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include
    
HEADERS += \
    uniqueIntegerID.

SOURCES += \
    uniqueIntegerID.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
