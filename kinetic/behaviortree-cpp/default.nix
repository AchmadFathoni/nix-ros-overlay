
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslib, zeromq3 }:
buildRosPackage {
  pname = "ros-kinetic-behaviortree-cpp";
  version = "2.5.1";

  src = fetchurl {
    url = https://github.com/BehaviorTree/behaviortree_cpp-release/archive/release/kinetic/behaviortree_cpp/2.5.1-0.tar.gz;
    sha256 = "e8732929b0566874fe3b9584fcf40df76c10ec686fcd9fd9affba6e90a8e4e86";
  };

  buildInputs = [ roslib zeromq3 ];
  propagatedBuildInputs = [ roslib zeromq3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a behavior trees core.'';
    #license = lib.licenses.MIT;
  };
}
