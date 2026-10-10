#[=======================================================================[.rst:
visionOS
--------

This file contains functions for options and configuration for targeting the
visionOS platform

Configure with CMake's built-in visionOS support (CMake 3.28+), for example::

    cmake -G Xcode -DCMAKE_SYSTEM_NAME=visionOS -DCMAKE_OSX_ARCHITECTURES=arm64

]=======================================================================]

#[============================[ visionOS Options ]============================]
function(visionos_options)
    #[[ Options from SCons

    TODO visionos_simulator: Target visionOS Simulator
        Default: False

    TODO visionos_min_version: Target minimum xros/xrsimulator version
        Default: 26.0

    TODO VISIONOS_TOOLCHAIN_PATH: Path to visionOS toolchain
        Default: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain",

    TODO VISIONOS_SDK_PATH: Path to the visionOS SDK
        Default: ''

    TODO visionos_triple: Triple for visionOS toolchain
        Default: if has_visionos_osxcross(): 'visionos_triple' else ''
    ]]
endfunction()

#[===========================[ Target Generation ]===========================]
function(visionos_generate)
    target_compile_definitions(godot-cpp PUBLIC VISIONOS_ENABLED UNIX_ENABLED)

    common_compiler_flags()
endfunction()
