project (iniparser C)

add_library (iniparser iniparser.c)

IF (MSVC)
    find_package (MSVC MODULE)
    MSVC_CRT_SECURE_NO_WARNINGS (iniparser)
ENDIF (MSVC)
