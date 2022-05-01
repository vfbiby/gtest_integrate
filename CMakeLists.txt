cmake_minimum_required(VERSION 3.22)
project(gtest_integrate)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")

include(spdlog)
include(gtest)

file(GLOB HEADERS ${PROJECT_SOURCE_DIR}/src/*.h)
file(GLOB SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)

add_executable(gtest_integrate ${HEADERS} ${SOURCES})
#add_executable(gtest_integrate src/main.cpp src/most_water.cpp src/Solution.cpp src/Solution.h)

target_include_directories(gtest_integrate PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(gtest_integrate PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

set(BUILD_GMOCK OFF CACHE BOOL "" FORCE)
set(BUILD_GTEST ON CACHE BOOL "" FORCE)

target_link_libraries(gtest_integrate PRIVATE spdlog::spdlog)
target_link_libraries(gtest_integrate PRIVATE gtest_main)
