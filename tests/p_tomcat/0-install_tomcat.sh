#!/bin/bash
# Author: Athmane Madjoudj <athmanem@gmail.com>

if (t_GetPkgRel basesystem | grep -q el6)
then
   t_Log "$0 - installing Tomcat 6"
   t_InstallPackage  tomcat6 tomcat6-admin-webapps tomcat6-webapps
else
   t_Log "$0 - installing Tomcat 5"
   t_InstallPackage  tomcat5 tomcat5-admin-webapps tomcat5-webapps
fi
