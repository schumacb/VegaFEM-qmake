TARGET = matrixIO
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    matrixIO.h \
    matrixMacros.h \
    multiMatrixIO.h

SOURCES += \
    matrixIO.cpp \
    multiMatrixIO.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
