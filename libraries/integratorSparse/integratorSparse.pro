
TARGET = integratorDense
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    centralDifferencesSparse.h \
    eulerSparse.h \
    implicitBackwardEulerSparse.h \
    implicitNewmarkSparse.h \
    integratorBaseSparse.h

SOURCES += \
    centralDifferencesSparse.cpp \
    eulerSparse.cpp \
    implicitBackwardEulerSparse.cpp \
    implicitNewmarkSparse.cpp \
    integratorBaseSparse.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
