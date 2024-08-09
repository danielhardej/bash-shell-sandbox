#!/bin/bash

# Function to check if a beer is good or gross
check_beer() {
	local beer=$1
	if [ -z "$beer" ]; then
        echo "No beer provided, you lightweight!"
    elif [ "$beer" == "Budweiser" ]; then
		echo "Budweiser is gross."
	elif [ "$beer" == "Coors Light" ]; then
		echo "Coors Light is gross."
	elif [ "$beer" == "Miller Lite" ]; then
		echo "Miller Lite is gross."
	elif [ "$beer" == "PBR" ]; then
		echo "PBR is gross."
	elif [ "$beer" == "Heineken" ]; then
		echo "Heineken is gross."
	elif [ "$beer" == "Guinness" ]; then
		echo "Guinness is gross."
	elif [ "$beer" == "Corona" ]; then
		echo "Corona is gross."
	elif [ "$beer" == "Stella Artois" ]; then
		echo "Stella Artois is gross."
	elif [ "$beer" == "Blue Moon" ]; then
		echo "Blue Moon is good."
	elif [ "$beer" == "Dos Equis" ]; then
		echo "Dos Equis is good."
	else
		echo "I don't know if $beer is good or gross."
	fi
}


# Prompt the user for input
echo "Please enter a beer name:"
read user_beer

# Run the beer check in parallel
check_beer "$user_beer" &
# Call the function with a beer name
check_beer "$1"

# # Wait for all background processes to complete
wait

echo "Beer check completed."