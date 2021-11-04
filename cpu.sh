echo "$(sensors | grep 'Package' | head -1 | awk '{print $4}')" | sed s/.0//g | sed s/+//g
