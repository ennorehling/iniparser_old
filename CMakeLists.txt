project (iniparser C)

add_library (${PROJECT_NAME} iniparser.c)

find_package (MSVC QUIET)
if (${MSVC_FOUND})
    MSVC_CRT_SECURE_NO_WARNINGS (iniparser)
endif (${MSVC_FOUND})

set (INIPARSER_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "IniParser headers")
set (INIPARSER_LIBRARIES iniparser CACHE INTERNAL "IniParser libraries")
