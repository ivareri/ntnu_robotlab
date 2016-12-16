#!/bin/bash
# Converts URDF file from blender into wokring xacro macro file
# Reads replacments from .sed files

gantry_support_dir=$(rospack find gantry_support)
echo $gantry_support_dir

# Do replacements
sed -f $gantry_support_dir/scripts/urdf_to_xacro.sed $gantry_support_dir/urdf/gantry.urdf > $gantry_support_dir/urdf/gantry_macro.xacro
sed -f $gantry_support_dir/scripts/gantry_joint_names.sed -i $gantry_support_dir/urdf/gantry_macro.xacro

# Generate urdf from xacro files. Usefull for MoveIt! setup assistant
$(rospack find xacro)/xacro.py --inorder $gantry_support_dir/urdf/gantry_robot.xacro > $gantry_support_dir/urdf/gantry_robot.urdf
