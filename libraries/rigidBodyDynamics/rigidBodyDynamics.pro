
TARGET = rigidBodyDynamics
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    rigidBody.h \
    rigidBody_generalTensor.h

SOURCES += \
    example.cpp \
    rigidBody.cpp \
    rigidBody_generalTensor.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}
