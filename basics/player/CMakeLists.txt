cmake_minimum_required(VERSION 3.21)

project(player LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Quick
)

qt_standard_project_setup(REQUIRES 6.11)

qt_add_executable(appPlayer
    main.cpp
)

qt_add_qml_module(appPlayer
    URI Player
    VERSION 1.0
    QML_FILES
        Main.qml
        InfoCard.qml
)

target_link_libraries(appPlayer
    PRIVATE Qt6::Quick
)
