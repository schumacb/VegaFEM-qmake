
TARGET = integratorDense
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    centralDifferencesDense.h \
    implicitBackwardEulerDense.h \
    implicitNewmarkDense.h \
    implicitNewmarkDenseMulti1D.h \
    integratorBaseDense.h \
    integratorMulti1D.h \
    IPIVC.h

SOURCES += \
    centralDifferencesDense.cpp \
    implicitBackwardEulerDense.cpp \
    implicitNewmarkDense.cpp \
    implicitNewmarkDenseMulti1D.cpp \
    integratorBaseDense.cpp \
    integratorMulti1D.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
