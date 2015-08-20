TARGET = glslPhong
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    glslPhong.h

SOURCES += \
    glslPhong.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
