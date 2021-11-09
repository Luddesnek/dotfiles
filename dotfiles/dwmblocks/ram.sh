#!/bin/fish

free -h | grep Mem: | awk '{print $3}' | sed s/"i"//g
