
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geographic-msgs, geometry-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-mavros-msgs";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/rolling/mavros_msgs/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "f72d89f9745e0f4f423ac107aacde62cabc987bd321d4e46c3c79b2cef623d41";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs rcl-interfaces rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "mavros_msgs defines messages for <a href=\"http://wiki.ros.org/mavros\">MAVROS</a>.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
