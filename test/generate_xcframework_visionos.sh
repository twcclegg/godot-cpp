#!/bin/sh

scons arch=arm64 visionos_simulator=yes platform=visionos target=$1 $2
scons arch=arm64 visionos_simulator=no platform=visionos target=$1 $2

xcodebuild -create-xcframework -library ./project/bin/libmytest.visionos.$1.a -library ./project/bin/libmytest.visionos.$1.simulator.a -output ./project/bin/libmytest.visionos.$1.xcframework
xcodebuild -create-xcframework -library ../bin/libgodot-cpp.visionos.$1.arm64.a -library ../bin/libgodot-cpp.visionos.$1.arm64.simulator.a  -output ./project/bin/libgodot-cpp.visionos.$1.xcframework
