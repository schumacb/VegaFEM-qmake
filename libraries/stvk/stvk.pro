
TARGET = stvk
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    StVKCubeABCD.h \
    StVKElementABCD.h \
    StVKElementABCDLoader.h \
    StVKHessianTensor.h \
    StVKInternalForces.h \
    StVKInternalForcesMT.h \
    StVKStiffnessMatrix.h \
    StVKStiffnessMatrixMT.h \
    StVKTetABCD.h \
    StVKTetHighMemoryABCD.h

SOURCES += \
    cubicMeshIntegrals.cpp \
    StVKCubeABCD.cpp \
    StVKElementABCD.cpp \
    StVKElementABCDLoader.cpp \
    StVKHessianTensor.cpp \
    StVKInternalForces.cpp \
    StVKInternalForcesMT.cpp \
    StVKStiffnessMatrix.cpp \
    StVKStiffnessMatrixMT.cpp \
    StVKTetABCD.cpp \
    StVKTetHighMemoryABCD.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
