

TARGET = sceneObject
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    sceneObject.h \
    sceneObject6DOF.h \
    sceneObjectDeformable.h \
    sceneObjectDeformable6DOF.h \
    sceneObjectDeformableGPU.h \
    sceneObjectDeformableGPU6DOF.h \
    sceneObjectWithRestPosition.h

SOURCES += \
    sceneObject.cpp \
    sceneObject6DOF.cpp \
    sceneObjectDeformable.cpp \
    sceneObjectDeformable6DOF.cpp \
    sceneObjectDeformableGPU.cpp \
    sceneObjectDeformableGPU6DOF.cpp \
    sceneObjectWithRestPosition.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
