echo "Nettpyage"
du -a bazar

mkdir bazar_clean
mkdir bazar_clean/videos
mkdir bazar_clean/images
mkdir bazar_clean/divers

find bazar/ -name "*.mp4" -exec cp {} bazar_clean/videos \;

find bazar/ -name "*.png" -exec cp {} bazar_clean/images \;

FILES=`find bazar/ -type f`

for FILE in $FILES
do

echo FILE

done
