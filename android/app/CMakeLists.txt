cmake_minimum_required(VERSION 3.4.1)  # for example

add_library( native_add
        # Sets the library as a shared library.
        SHARED
        #        # Provides a relative path to your source file(s).
        ../../ios/cpp/check_connect/check_connect_native.cpp )


#add_library( sliderTest
#        # Sets the library as a shared library.
#        SHARED
#        #        # Provides a relative path to your source file(s).
#        ../../ios/cpp/slider/slider_native.cpp )