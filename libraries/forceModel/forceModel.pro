TARGET = forceModel
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    forceModel.h

SOURCES += \
    forceModel.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
