cmake_minimum_required(VERSION 3.21)

project(QObject LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Quick
)

qt_standard_project_setup(REQUIRES 6.11)

qt_add_executable(appobject
    main.cpp
    parent.cpp
    parent.h
    child.cpp
    child.h
)

target_link_libraries(appobject
    PRIVATE Qt6::Quick
)