#-------------------------------------------------
#
# Project created by QtCreator 2020-03-26T13:53:21
#
#-------------------------------------------------

QT += core gui webengine webenginewidgets webchannel xml

CONFIG += c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


TARGET = whatsie
TEMPLATE = app
LIBS += -L/usr/X11/lib -lX11

win32{
    LIBS += User32.Lib
}

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# No debug output in release mode
CONFIG(release, debug|release):DEFINES += QT_NO_DEBUG_OUTPUT

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0



# Set program version
VERSION = 1.0
DEFINES += VERSIONSTR=\\\"$${VERSION}\\\"

SOURCES += \
        about.cpp \
        dictionaries.cpp \
        downloadmanagerwidget.cpp \
        downloadwidget.cpp \
        elidedlabel.cpp \
        lock.cpp \
        main.cpp \
        mainwindow.cpp \
        rungaurd.cpp \
        settingswidget.cpp \
        utils.cpp \
        webenginepage.cpp \
        widgets/scrolltext/scrolltext.cpp

RESOURCES += \
        icons.qrc

HEADERS += \
    about.h \
    common.h \
    dictionaries.h \
    downloadmanagerwidget.h \
    downloadwidget.h \
    elidedlabel.h \
    lock.h \
    mainwindow.h \
    notificationpopup.h \
    requestinterceptor.h \
    rungaurd.h \
    settingswidget.h \
    utils.h \
    webenginepage.h \
    widgets/scrolltext/scrolltext.h


# Default rules for deployment.
isEmpty(PREFIX){
 PREFIX = /usr
}

BINDIR  = $$PREFIX/bin
DATADIR = $$PREFIX/share

target.path = $$BINDIR

icon.files = icons/whatsie.png
icon.path = $$DATADIR/icons/hicolor/512x512/apps/

desktop.files = whatsie.desktop
desktop.path = $$DATADIR/applications/

INSTALLS += target icon desktop

FORMS += \
    about.ui \
    certificateerrordialog.ui \
    downloadmanagerwidget.ui \
    downloadwidget.ui \
    lock.ui \
    passworddialog.ui \
    settingswidget.ui
