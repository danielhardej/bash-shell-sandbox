#! /bin/bash

echo "My first bash script is running!"
OUTPUT_FILE="beerlist.txt"
WELCOME="Welcome to the beer list!"

if [ ! -f $OUTPUT_FILE ]; then
    echo $WELCOME > beerlist.txt
    echo "1. Budweiser" | tee -a $OUTPUT_FILE
    echo "2. Coors Light" | tee -a $OUTPUT_FILE
    echo "3. Miller Lite" | tee -a $OUTPUT_FILE
    echo "4. PBR" | tee -a $OUTPUT_FILE
    echo "5. Heineken" | tee -a $OUTPUT_FILE
    echo "6. Guinness" | tee -a $OUTPUT_FILE
    echo "7. Corona" | tee -a $OUTPUT_FILE
    echo "8. Stella Artois" | tee -a $OUTPUT_FILE
    echo "9. Blue Moon" | tee -a $OUTPUT_FILE
    echo "10. Dos Equis" | tee -a $OUTPUT_FILE
else
    echo "The file $OUTPUT_FILE already exists."
fi

echo "Which beers are good and which are gross?"
echo "Please enter a beer name:"
read user_beer

if [ "$user_beer" == "Budweiser" ]; then
    echo "Budweiser is gross."
elif [ "$user_beer" == "Coors Light" ]; then
    echo "Coors Light is gross."
elif [ "$user_beer" == "Miller Lite" ]; then
    echo "Miller Lite is gross."
elif [ "$user_beer" == "PBR" ]; then
    echo "PBR is gross."
elif [ "$user_beer" == "Heineken" ]; then
    echo "Heineken is gross."
elif [ "$user_beer" == "Guinness" ]; then
    echo "Guinness is good."
elif [ "$user_beer" == "Corona" ]; then
    echo "Corona is gross."
elif [ "$user_beer" == "Stella Artois" ]; then
    echo "Stella Artois is gross."
elif [ "$user_beer" == "Blue Moon" ]; then
    echo "Blue Moon is good."
elif [ "$user_beer" == "Dos Equis" ]; then
    echo "Dos Equis is good."
else
    echo "I don't know if $user_beer is good or gross."
fi