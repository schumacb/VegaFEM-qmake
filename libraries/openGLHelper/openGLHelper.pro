
TARGET = openGLHelper
TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../../include

HEADERS += \
    openGLHelper.h \
    printBitmap.h \
    saveScreenShot.h

SOURCES += \
    openGLHelper.cpp \
    printBitmap.cpp \
    saveScreenShot.cpp

unix {
    target.path = /usr/lib
    INSTALLS += target
}

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

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../imageIO/release/ -limageIO
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../imageIO/debug/ -limageIO
else:unix: LIBS += -L$$OUT_PWD/../imageIO/ -limageIO

INCLUDEPATH += $$PWD/../imageIO
DEPENDPATH += $$PWD/../imageIO

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageIO/release/libimageIO.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageIO/debug/libimageIO.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageIO/release/imageIO.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageIO/debug/imageIO.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../imageIO/libimageIO.a
