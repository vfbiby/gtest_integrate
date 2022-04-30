cmake_minimum_required(VERSION 3.22)
project(gtest_integrate)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")

include(spdlog)
include(googletest)

add_executable(gtest_integrate main.cpp)

target_include_directories(gtest_integrate PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)

target_link_libraries(gtest_integrate PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

set(BUILD_GMOCK OFF CACHE BOOL "" FORCE)
set(BUILD_GTEST ON CACHE BOOL "" FORCE)

target_link_libraries(gtest_integrate PRIVATE spdlog::spdlog)
target_link_libraries(gtest_integrate PRIVATE gtest_main)
