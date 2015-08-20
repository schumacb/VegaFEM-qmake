
TARGET = isotropicHyperelasticFEM
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    homogeneousMooneyRivlinIsotropicMaterial.h \
    homogeneousNeoHookeanIsotropicMaterial.h \
    homogeneousStVKIsotropicMaterial.h \
    isotropicHyperelasticFEM.h \
    isotropicHyperelasticFEMMT.h \
    isotropicMaterial.h \
    isotropicMaterialWithCompressionResistance.h \
    MooneyRivlinIsotropicMaterial.h \
    neoHookeanIsotropicMaterial.h \
    StVKIsotropicMaterial.h

SOURCES += \
    homogeneousMooneyRivlinIsotropicMaterial.cpp \
    homogeneousNeoHookeanIsotropicMaterial.cpp \
    homogeneousStVKIsotropicMaterial.cpp \
    isotropicHyperelasticFEM.cpp \
    isotropicHyperelasticFEMMT.cpp \
    isotropicMaterial.cpp \
    isotropicMaterialWithCompressionResistance.cpp \
    MooneyRivlinIsotropicMaterial.cpp \
    neoHookeanIsotropicMaterial.cpp \
    StVKIsotropicMaterial.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
