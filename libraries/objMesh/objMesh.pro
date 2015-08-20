
TARGET = objMesh
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    boundingBox.h \
    objMesh-disjointSet.h \
    objMesh.h \
    objMeshBinaryLoader.h \
    objMeshClose.h \
    objMeshEncode.h \
    objMeshGraph.h \
    objMeshOctree.h \
    objMeshOffsetVoxels.h \
    objMeshOrientable.h \
    objMeshRender.h \
    octree.h \
    simpleSphere.h \
    triangle.h \
    tribox3.h

SOURCES += \
    boundingBox.cpp \
    objMesh-disjointSet.cpp \
    objMesh.cpp \
    objMeshBinaryLoader.cpp \
    objMeshClose.cpp \
    objMeshEncode.cpp \
    objMeshGraph.cpp \
    objMeshOctree.cpp \
    objMeshOffsetVoxels.cpp \
    objMeshOrientable.cpp \
    objMeshRender.cpp \
    octree.cpp \
    simpleSphere.cpp \
    triangle-closestPoint.cpp \
    triangle.cpp \
    tribox3.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
