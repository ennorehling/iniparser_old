project (iniparser C)

add_library (${PROJECT_NAME} iniparser.c iniparser.h)

set (INIPARSER_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR} CACHE INTERNAL "IniParser headers")
set (INIPARSER_LIBRARIES iniparser CACHE INTERNAL "IniParser libraries")

target_link_libraries(inifile ${INIPARSER_LIBRARIES})
add_executable(inifile inifile.c)
install(TARGETS inifile DESTINATION "bin")

IF (MSVC)
    find_package (MSVC MODULE)
    MSVC_CRT_SECURE_NO_WARNINGS (${PROJECT_NAME})
    MSVC_CRT_SECURE_NO_WARNINGS (inifile)
ENDIF (MSVC)
