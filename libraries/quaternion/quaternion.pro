
TARGET = quaternion
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    quaternion.h

SOURCES += \
#TODO   example.cpp \
    quaternion.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
