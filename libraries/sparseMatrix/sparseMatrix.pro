
TARGET = sparseMatrix
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    sparseMatrix.h \
    sparseMatrixMT.h

SOURCES += \
#    example.cpp \ TODO
    sparseMatrix.cpp \
    sparseMatrixMT.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
