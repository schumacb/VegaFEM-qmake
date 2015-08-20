
TARGET = sceneObjectReduced
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

SOURCES += \
    
HEADERS += \

unix {
    target.path = /usr/lib
    INSTALLS += target
}
