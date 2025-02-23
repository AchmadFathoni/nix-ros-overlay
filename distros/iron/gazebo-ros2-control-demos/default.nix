
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, diff-drive-controller, effort-controllers, gazebo-ros, gazebo-ros2-control, geometry-msgs, hardware-interface, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros2-control, std-msgs, tricycle-controller, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-iron-gazebo-ros2-control-demos";
  version = "0.6.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/iron/gazebo_ros2_control_demos/0.6.7-1.tar.gz";
    name = "0.6.7-1.tar.gz";
    sha256 = "fd6a41dabac119914af14e4c989b4b56d6ca2d57145df9a559f47b8e5708bb7f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs diff-drive-controller effort-controllers gazebo-ros gazebo-ros2-control geometry-msgs hardware-interface joint-state-broadcaster joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros2-control std-msgs tricycle-controller velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gazebo_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
