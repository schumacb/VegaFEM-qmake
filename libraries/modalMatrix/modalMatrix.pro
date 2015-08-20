
TARGET = modalMatrix
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    modalMatrix.h \
    modalMatrixTransposed.h

SOURCES += \
    modalMatrix.cpp \
    modalMatrixTransposed.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
