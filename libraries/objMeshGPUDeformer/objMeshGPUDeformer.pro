
TARGET = objMeshGPUDeformer
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    glh_extensions.h \
    glh_genext.h \
    objMeshGPUDeformer.h \
    objMeshGPUDeformer_coarseToFine.h \
    objMeshGPUDeformer_coarseToFine_fbo.h \
    objMeshGPUDeformer_uUq.h \
    objMeshGPUDeformer_uUq_fbo.h \
    objMeshGPUDeformer_uUq_pbuffer.h \
    objMeshGPUDeformer_uUq_setLighting.h \
    vbo.h

SOURCES += \
    coarseToFine-shaders.cpp \
    objMeshGPUDeformer.cpp \
    objMeshGPUDeformer_coarseToFine.cpp \
    objMeshGPUDeformer_coarseToFine_fbo.cpp \
    objMeshGPUDeformer_uUq.cpp \
    objMeshGPUDeformer_uUq_fbo.cpp \
    objMeshGPUDeformer_uUq_pbuffer.cpp \
    objMeshGPUDeformer_uUq_setLighting.cpp \
    uUq-shaders.cpp \
    vbo.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
