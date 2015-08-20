
TARGET = integrator
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    getIntegratorSolver.h \
    integratorBase.h \
    integratorSolverSelection.h

SOURCES += \
    getIntegratorSolver.cpp \
    integratorBase.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
