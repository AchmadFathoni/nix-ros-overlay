
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-lint, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-pep257";
  version = "0.14.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_pep257/0.14.4-1.tar.gz";
    name = "0.14.4-1.tar.gz";
    sha256 = "3d27fbde8c032b9e60c919b3812d554285cf68220c1b45bc3993a48a2afe4532";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-lint python3Packages.pydocstyle ];

  meta = {
    description = "The ability to check code against the docstring style conventions in
    PEP 257 and generate xUnit test result files.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
