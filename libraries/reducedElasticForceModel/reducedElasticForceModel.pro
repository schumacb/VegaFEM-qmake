
TARGET = reducedElasticForceModel
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    reducedLinearForceModel.h \
    reducedLinearStVKForceModel.h \
    reducedMassSpringSystemForceModel.h \
    reducedMassSpringSystemForceModelWithHessian.h \
    reducedSpringForceModel.h \
    reducedStVKForceModel.h \
    reducedStVKForceModelWithHessian.h \
    reducedSubspaceStVKForceModel.h

SOURCES += \
    reducedLinearForceModel.cpp \
    reducedLinearStVKForceModel.cpp \
    reducedMassSpringSystemForceModel.cpp \
    reducedMassSpringSystemForceModelWithHessian.cpp \
    reducedSpringForceModel.cpp \
    reducedStVKForceModel.cpp \
    reducedStVKForceModelWithHessian.cpp \
    reducedSubspaceStVKForceModel.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../reducedForceModel/release/ -lreducedForceModel
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../reducedForceModel/debug/ -lreducedForceModel
else:unix: LIBS += -L$$OUT_PWD/../reducedForceModel/ -lreducedForceModel

INCLUDEPATH += $$PWD/../reducedForceModel
DEPENDPATH += $$PWD/../reducedForceModel

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../reducedForceModel/release/libreducedForceModel.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../reducedForceModel/debug/libreducedForceModel.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../reducedForceModel/release/reducedForceModel.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../reducedForceModel/debug/reducedForceModel.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../reducedForceModel/libreducedForceModel.a

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../matrixIO/release/ -lmatrixIO
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../matrixIO/debug/ -lmatrixIO
else:unix: LIBS += -L$$OUT_PWD/../matrixIO/ -lmatrixIO

INCLUDEPATH += $$PWD/../matrixIO
DEPENDPATH += $$PWD/../matrixIO

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../matrixIO/release/libmatrixIO.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../matrixIO/debug/libmatrixIO.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../matrixIO/release/matrixIO.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../matrixIO/debug/matrixIO.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../matrixIO/libmatrixIO.a
