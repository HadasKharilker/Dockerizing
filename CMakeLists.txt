cmake_minimum_required(VERSION 3.10)

# Set the project name
project(MyApp)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add source files
file(GLOB SOURCES "src/*.cpp")

# Include directories
include_directories(include)
include_directories(Crow-master/Crow-master/include)
include_directories(asio-master/asio/include)

# Add the executable
add_executable(my_cpp_app ${SOURCES})

# Link necessary libraries (pthread for Asio)
target_link_libraries(my_cpp_app pthread)
