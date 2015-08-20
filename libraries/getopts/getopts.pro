TARGET = getopts
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    getopts.h

SOURCES += \
    getopts.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
