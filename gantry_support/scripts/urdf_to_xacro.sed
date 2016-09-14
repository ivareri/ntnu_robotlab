s@<robot name="gantry">@@
s@ name="@ name="\${prefix}@g
s@filename="\.\.@filename="package://gantry_support@g
s@1\.570796@\${DEG2RAD * 90}@g
s@3\.141593@\${DEG2RAD * 180}@g
s@</robot>@</xacro:macro>\n</robot>@
s@<?xml version="1.0"?>@<?xml version="1\.0"?>\n<robot xmlns:xacro="http://www.ros.org/wiki/xacro">\n<xacro:property name="DEG2RAD" value="0.017453292519943295"/>\n<xacro:macro name="gantry" params="prefix">@
