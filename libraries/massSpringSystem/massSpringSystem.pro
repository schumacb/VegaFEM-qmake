
TARGET = massSpringSystem
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    massSpringSystem.h \
    massSpringSystemFromCubicMesh.h \
    massSpringSystemFromCubicMeshConfigFile.h \
    massSpringSystemFromObjMesh.h \
    massSpringSystemFromObjMeshConfigFile.h \
    massSpringSystemFromTetMesh.h \
    massSpringSystemFromTetMeshConfigFile.h \
    massSpringSystemMT.h \
    renderSprings.h

SOURCES += \
    massSpringSystem.cpp \
    massSpringSystemFromCubicMesh.cpp \
    massSpringSystemFromCubicMeshConfigFile.cpp \
    massSpringSystemFromObjMesh.cpp \
    massSpringSystemFromObjMeshConfigFile.cpp \
    massSpringSystemFromTetMesh.cpp \
    massSpringSystemFromTetMeshConfigFile.cpp \
    massSpringSystemMT.cpp \
    renderSprings.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
