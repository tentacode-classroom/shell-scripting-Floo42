function vieillir()
{
	read TAMAGOTCHI_AGE < ../database/tamagotchi_age
	echo TAMAGOTCHI_AGE + 1 > ../database/tamagotchi_age
	echo "Vieilissement, votre tamagotchi a maintenant" $((TAMAGOTCHI_AGE + 1)) "ans"	
}
