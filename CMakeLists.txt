project (iniparser C)

add_library (${PROJECT_NAME} iniparser.c iniparser.h)

set (INIPARSER_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "IniParser headers")
set (INIPARSER_LIBRARIES iniparser CACHE INTERNAL "IniParser libraries")

add_executable(inifile inifile.c)
target_link_libraries(inifile ${INIPARSER_LIBRARIES})
install(TARGETS inifile DESTINATION "bin")

IF (MSVC)
    find_package (MSVC MODULE)
    MSVC_CRT_SECURE_NO_WARNINGS (${PROJECT_NAME})
    MSVC_CRT_SECURE_NO_WARNINGS (inifile)
ENDIF (MSVC)
