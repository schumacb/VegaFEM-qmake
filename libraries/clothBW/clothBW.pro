
TARGET = clothBW
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    clothBW.h \
    clothBWFromObjMesh.h \
    clothBWMT.h

SOURCES += \
    clothBW.cpp \
    clothBWFromObjMesh.cpp \
    clothBWMT.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
