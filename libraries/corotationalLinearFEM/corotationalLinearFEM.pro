
TARGET = corotationalLinearFEM
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    corotationalLinearFEM.h \
    corotationalLinearFEMMT.h

SOURCES += \
    corotationalLinearFEM.cpp \
    corotationalLinearFEMMT.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
