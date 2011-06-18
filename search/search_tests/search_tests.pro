# Map library tests.

TARGET = search_tests
CONFIG += console
CONFIG -= app_bundle
TEMPLATE = app

ROOT_DIR = ../..
DEPENDENCIES =  search platform indexer geometry coding base

include($$ROOT_DIR/common.pri)

# needed for GetPlatform::ReadPathForFile()
QT += core

win32 {
  LIBS += -lShell32
  win32-g++ {
    LIBS += -lpthread
  }
}

SOURCES += \
    ../../testing/testingmain.cpp \
    categories_test.cpp \
    keyword_matcher_test.cpp \
    latlon_match_test.cpp \
    query_test.cpp \
    string_match_test.cpp \

HEADERS += \
    match_cost_mock.hpp \
