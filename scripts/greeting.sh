
#!/bin/bash

tput setaf 1

echo "Good Morning"

tput setaf 2

sleep 1 && echo "Good Morning Again"

tput setaf 4

sleep 1 && echo "No more good mornings ;("

tput setaf 5


sleep 1 && echo "So want to hear some music"


echo ' '
tput setaf 6
read -p "
yes/no? : " answer

while true
do
	case $answer in
		[yes]* ) mpv 'https://www.youtube.com/watch?v=iik25wqIuFo'
			break;;
	
	         [no]* ) echo "
Okay bye then :|
"
              		break;;

		[?]* ) echo "
you've entered the twilight realm
" | lolcat && sleep 2 && mpv 'https://www.youtube.com/watch?v=U6-RYixiiDE' | lolcat && cmatrix | lolcat 
                       
                        break;;



esac
done
