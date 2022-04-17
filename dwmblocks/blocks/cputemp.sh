#!/bin/fish

sensors | grep 'Package' | awk '{print "[ "$4}' | sed s/'+'//
