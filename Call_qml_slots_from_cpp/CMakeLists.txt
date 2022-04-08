cmake_minimum_required(VERSION 3.18)

project(Call_qml_slots_from_cppApp LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 COMPONENTS Gui Qml Quick)
qt_add_executable(Call_qml_slots_from_cppApp src/main.cpp)

qt_add_resources(Call_qml_slots_from_cppApp "configuration"
    PREFIX "/"
    FILES
        qtquickcontrols2.conf
)

target_link_libraries(Call_qml_slots_from_cppApp PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
)

include(${CMAKE_CURRENT_SOURCE_DIR}/qmlmodules)
