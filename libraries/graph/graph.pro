
TARGET = graph
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    graph.h

SOURCES += \
    graph.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
