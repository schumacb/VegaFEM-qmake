
TARGET = elasticForceModel
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    clothBWForceModel.h \
    corotationalLinearFEMForceModel.h \
    isotropicHyperelasticFEMForceModel.h \
    linearFEMForceModel.h \
    massSpringSystemForceModel.h \
    StVKForceModel.h

SOURCES += \
    clothBWForceModel.cpp \
    corotationalLinearFEMForceModel.cpp \
    isotropicHyperelasticFEMForceModel.cpp \
    linearFEMForceModel.cpp \
    massSpringSystemForceModel.cpp \
    StVKForceModel.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
