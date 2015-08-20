
TARGET = minivector
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    eig3.h \
    mat3d.h \
    minivector.h \
    vec2d.h \
    vec3d.h

SOURCES += \
    eig3.cpp \
    mat3d.cpp \
    vec2d.cpp \
    vec3d.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
