
TARGET = volumetricMesh
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    computeStiffnessMatrixNullspace.h \
    cubicMesh.h \
    generateInterpolationMatrix.h \
    generateMassMatrix.h \
    generateMeshGraph.h \
    generateSurfaceMesh.h \
    generateTetMeshFromCubicMesh.h \
    interpolationWeightsMultiLoad.h \
    tetMesh.h \
    volumetricMesh.h \
    volumetricMeshDeformationGradient.h \
    volumetricMeshENuMaterial.h \
    volumetricMeshExtensions.h \
    volumetricMeshLoader.h \
    volumetricMeshMooneyRivlinMaterial.h \
    volumetricMeshOrthotropicMaterial.h \
    volumetricMeshParser.h

SOURCES += \
    computeStiffnessMatrixNullspace.cpp \
    cubicMesh.cpp \
    generateInterpolationMatrix.cpp \
    generateMassMatrix.cpp \
    generateMeshGraph.cpp \
    generateSurfaceMesh.cpp \
    generateTetMeshFromCubicMesh.cpp \
    interpolationWeightsMultiLoad.cpp \
    tetMesh.cpp \
    volumetricMesh.cpp \
    volumetricMeshDeformationGradient.cpp \
    volumetricMeshENuMaterial.cpp \
    volumetricMeshExtensions.cpp \
    volumetricMeshLoader.cpp \
    volumetricMeshMooneyRivlinMaterial.cpp \
    volumetricMeshOrthotropicMaterial.cpp \
    volumetricMeshParser.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
