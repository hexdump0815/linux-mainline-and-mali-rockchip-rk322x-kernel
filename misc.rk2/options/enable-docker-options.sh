#!/bin/bash

cd /compile/source/linux-stable-r2

for i in `cat /compile/doc/stable-r2/misc.rk2/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable-r2/misc.rk2/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
