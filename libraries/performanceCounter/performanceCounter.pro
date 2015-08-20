
TARGET = performanceCounter
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    performanceCounter.h

SOURCES += \
    performanceCounter.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
