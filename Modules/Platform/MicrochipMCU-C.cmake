#=============================================================================
# Copyright 2016 Sam Hanes
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file COPYING.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake-Microchip,
#  substitute the full License text for the above reference.)

# This module is loaded during the search for a C compiler
# to provide the information necessary to find one.

if(CMAKE_SYSTEM_PROCESSOR STREQUAL "PIC_16")
    include(Platform/MicrochipMCU-C-XC16)
else()
    message(FATAL_ERROR
        "No C compiler for '${CMAKE_SYSTEM_PROCESSOR}'"
        " is supported yet."
    )
endif()
