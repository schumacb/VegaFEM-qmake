
TARGET = lighting
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    lighting.h

SOURCES += \
    lighting.cpp
    
unix {
    target.path = /usr/lib
    INSTALLS += target
}
