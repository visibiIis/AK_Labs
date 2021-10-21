cmake_minimum_required(VERSION 3.13)
project(calculator)               
set(CMAKE_CXX_STANDARD 14) 

set(BIN_NAME calculator)
set(SOURCE main.cpp)
set(LIB_NAME calcLib)

file(
    GLOB LIB_FILES
    calculator.cpp
    calculator.h
)

add_executable(${BIN_NAME} ${SOURCE})
add_library(${LIB_NAME} STATIC ${LIB_FILES})
target_link_libraries(${BIN_NAME} ${LIB_NAME})
