set(SOURCES 
	"code_gen.cpp"
	"code_gen.h"
	"compiler.cpp"
	"lexer.cpp"
	"lexer.h"
	"parser.cpp"
	"parser.h"
	"type_checker.cpp"
	"type_checker.h"
	"value.cpp"
	"value.h"
	"virtual_machine.cpp"
	"virtual_machine.h")

add_library(polyscript ${SOURCES})

target_link_libraries(polyscript common_lib)

target_include_directories(polyscript PUBLIC "${PROJ_ROOT_PATH}/common_lib/source/")
