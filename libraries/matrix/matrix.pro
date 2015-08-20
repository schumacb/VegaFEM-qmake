
TARGET = matrix
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    expokit_xgpadm.h \
    matrix.h \
    matrixBLAS.h \
    matrixExp.h \
    matrixLAPACK.h \
    matrixPCA.h \
    matrixProjection.h

SOURCES += \
    matrix.cpp \
    matrixBLAS.cpp \
    matrixBLASOptimized.cpp \
    matrixBLASVanilla.cpp \
    matrixExp.cpp \
    matrixLAPACK.cpp \
    matrixPCA.cpp \
    matrixProjection.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
