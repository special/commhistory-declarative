TARGET = commhistory-declarative
PLUGIN_IMPORT_PATH = org/nemomobile/commhistory

CONFIG += link_pkgconfig
PKGCONFIG += commhistory

SOURCES += src/plugin.cpp

HEADERS += src/constants.h

# do not edit below here, move this to a shared .pri?
TEMPLATE = lib
CONFIG += qt plugin hide_symbols
QT += declarative

target.path = $$[QT_INSTALL_IMPORTS]/$$PLUGIN_IMPORT_PATH
INSTALLS += target

qmldir.files += $$PWD/qmldir
qmldir.path +=  $$[QT_INSTALL_IMPORTS]/$$$$PLUGIN_IMPORT_PATH
INSTALLS += qmldir
