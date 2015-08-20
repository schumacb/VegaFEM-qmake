
TARGET = renderVolumetricMesh
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    renderVolumetricMesh.h

SOURCES += \
    renderVolumetricMesh.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
