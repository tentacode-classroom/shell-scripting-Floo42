#!/bin/bash -xe

source ./functions/functions.sh

if [ -e database/tamagotchi_name ]
then
	echo "Chargement de votre Tamagotchi :"
	read TAMAGOTCHI_NAME < database/tamagotchi_name
	read TAMAGOTCHI_AGE < database/tamagotchi_age
	read TAMAGOTCHI_HUNGER < database/tamagotchi_hunger
	echo "Son nom est :" $TAMAGOTCHI_NAME 
	echo "Son age est :" $TAMAGOTCHI_AGE
	echo "Son niveau de faim est a :" $TAMAGOTCHI_HUNGER
	read -p "Action a effectuer (NOURRIR), (VIEILLIR) :" ACTION

	if [ $ACTION = "NOURRIR" ]
	then
		echo $(($TAMAGOTCHI_HUNGER + 10)) > database/tamagotchi_hunger
		echo "Sa faim est maintenant à : " $((TAMAGOTCHI_HUNGER + 10))
	elif [ $ACTION = "VIEILLIR" ]
	then
		vieillir
	else
		echo "Mauvaise commande"
	fi

else
read -p "Quel est le nom de votre Tamagotchi ? " NOM
echo Son nom est $NOM
mkdir database
touch database/tamagotchi_name
echo $NOM > database/tamagotchi_name
touch database/tamaotchi_age
echo 0 > database/tamagotchi_age
touch database/tamagotchi_hunger
echo 100 > database/tamagotchi_hunger
fi
