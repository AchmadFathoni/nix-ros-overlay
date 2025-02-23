
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cpplint, curl, diagnostic-aggregator, diagnostic-updater, eigen, geographiclib, geometry-msgs, git, jq, lifecycle-msgs, microstrain-inertial-msgs, nav-msgs, nmea-msgs, rclcpp-lifecycle, ros-environment, rosidl-default-generators, rosidl-default-runtime, rtcm-msgs, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-driver";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_driver/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "f0cca5497cc27cc91a25c1064e213d02f2b05646230f100ba48063786eab21a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ curl eigen geographiclib git jq ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-cpplint ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-updater geometry-msgs lifecycle-msgs microstrain-inertial-msgs nav-msgs nmea-msgs rclcpp-lifecycle rosidl-default-runtime rtcm-msgs sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ git rosidl-default-generators ];

  meta = {
    description = "The ros_mscl package provides a driver for the LORD/Microstrain inertial products.";
    license = with lib.licenses; [ mit ];
  };
}
