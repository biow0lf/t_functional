#!/bin/sh
# Author: Nikhil Lanjewar <nikhil@lanjewar.com>
# Author: Sahil Muthoo <sahilm@thoughtworks.com>
# Author: Sahil Aggarwal <sahilagg@gmail.com>
# Author: Saager Mhatre <saager.mhatre@gmail.com>
#	  Christoph Galuschka <christoph.galuschka@chello.at>

t_Log "Running $0 - Check version of rdoc."

#allready prepared just in case versions should change between C5 and C6
if [ $centos_ver = 5 ]
  then
  rdoc -v | grep -q '1.0.1'
  ret_val=$?
else
  rdoc -v | grep -q '1.0.1'
  ret_val=$?
fi

t_CheckExitStatus $ret_val

