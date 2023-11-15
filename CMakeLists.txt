cmake_minimum_required(VERSION 3.10)

project(MyProject)

set(CMAKE_CXX_STANDARD 11)

add_library(MyLibrary STATIC hello.cpp foo.cpp)
add_executable(main main.cpp)

target_link_libraries(main PRIVATE MyLibrary)
