
TARGET = sparseSolver
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    ARPACKSolver.h \
    CGSolver.h \
    invMKSolver.h \
    linearSolver.h \
    PardisoSolver.h \
    sparseSolverAvailability.h \
    sparseSolvers.h \
    SPOOLESSolver.h \
    SPOOLESSolverMT.h

SOURCES += \
    ARPACKSolver.cpp \
    CGSolver.cpp \
    invMKSolver.cpp \
    linearSolver.cpp \
    PardisoSolver.cpp \
    SPOOLESSolver.cpp \
    SPOOLESSolverMT.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
