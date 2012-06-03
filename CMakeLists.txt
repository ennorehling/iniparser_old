project (iniparser C)

add_library (iniparser iniparser.c)

find_package (MSVC QUIET)
if (${MSVC_FOUND})
    MSVC_CRT_SECURE_NO_WARNINGS (iniparser)
endif (${MSVC_FOUND})

set (INIPARSER_INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR} CACHE INTERNAL "IniParser headers")
