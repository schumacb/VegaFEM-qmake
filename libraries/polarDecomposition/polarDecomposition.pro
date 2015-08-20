
TARGET = polarDecomposition
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    polarDecomposition.h \
    polarDecompositionGradient.h

SOURCES += \
    polarDecomposition.cpp \
    polarDecompositionGradient.cpp \
    polarDecompositionGradientDriver.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../minivector/release/ -lminivector
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../minivector/debug/ -lminivector
else:unix: LIBS += -L$$OUT_PWD/../minivector/ -lminivector

INCLUDEPATH += $$PWD/../minivector
DEPENDPATH += $$PWD/../minivector

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../minivector/release/libminivector.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../minivector/debug/libminivector.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../minivector/release/minivector.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../minivector/debug/minivector.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../minivector/libminivector.a
