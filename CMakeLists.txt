project (iniparser C)

add_library (${PROJECT_NAME} iniparser.c)

IF (MSVC)
    find_package (MSVC MODULE)
    MSVC_CRT_SECURE_NO_WARNINGS (${PROJECT_NAME})
ENDIF (MSVC)

set (INIPARSER_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "IniParser headers")
set (INIPARSER_LIBRARIES iniparser CACHE INTERNAL "IniParser libraries")
