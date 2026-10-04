cmake_minimum_required(VERSION 3.21)

project(layout LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Quick
)

qt_standard_project_setup(REQUIRES 6.11)

qt_add_executable(appLayout
    main.cpp
)

qt_add_qml_module(appLayout
    URI Layout
    VERSION 1.0
    QML_FILES
        Main.qml
)

target_link_libraries(appLayout
    PRIVATE Qt6::Quick
)
