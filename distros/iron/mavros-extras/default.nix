
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-python, ament-lint-auto, ament-lint-common, angles, diagnostic-msgs, diagnostic-updater, eigen, eigen-stl-containers, eigen3-cmake-module, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros, mavros-msgs, message-filters, nav-msgs, pluginlib, rclcpp, rclcpp-components, rcpputils, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs, urdf, visualization-msgs, yaml-cpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-mavros-extras";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/iron/mavros_extras/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "b5b9df5b2e1b880f4f007e642856663f5ca0d30ebef13b22d6c3a11dde3fd84f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python angles ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater eigen eigen-stl-containers eigen3-cmake-module geographic-msgs geographiclib geometry-msgs libmavconn mavlink mavros mavros-msgs message-filters nav-msgs pluginlib rclcpp rclcpp-components rcpputils rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs urdf visualization-msgs yaml-cpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python eigen3-cmake-module ];

  meta = {
    description = "Extra nodes and plugins for <a href=\"http://wiki.ros.org/mavros\">MAVROS</a>.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}
