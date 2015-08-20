
TARGET = imageIO
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    imageIO.h \
    imageFormats.h

SOURCES += \
    imageIO.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
