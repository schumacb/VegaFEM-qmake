
TARGET = reducedStvk
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    StVKReducedHessianTensor.h \
    StVKReducedInternalForces.h \
    StVKReducedInternalForcesMT.h \
    StVKReducedInternalForcesMultiLoad.h \
    StVKReducedStiffnessMatrix.h

SOURCES += \
    StVKReducedHessianTensor.cpp \
    StVKReducedInternalForces.cpp \
    StVKReducedInternalForcesMT.cpp \
    StVKReducedInternalForcesMultiLoad.cpp \
    StVKReducedStiffnessMatrix.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
