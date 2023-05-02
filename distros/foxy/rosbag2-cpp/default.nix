
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, pluginlib, rcpputils, rcutils, rosbag2-storage, rosbag2-test-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-cpp, rosidl-typesupport-introspection-cpp, shared-queues-vendor, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-cpp";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_cpp/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "36886f103eebc5e4093f3939ae4ea3091feab3cd0cf412759b0e60f7ac4da7f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp pluginlib rcpputils rcutils rosbag2-storage rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-cpp rosidl-typesupport-introspection-cpp shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++ ROSBag2 client library'';
    license = with lib.licenses; [ asl20 ];
  };
}
