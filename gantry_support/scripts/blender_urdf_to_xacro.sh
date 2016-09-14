#!/bin/bash
# Converts URDF file from blender into wokring xacro macro file
# Reads replacments from .sed files

sed -f urdf_to_xacro.sed ../urdf/gantry.urdf > ../urdf/gantry_macro.xacro
sed -f gantry_joint_names.sed -i ../urdf/gantry_macro.xacro
