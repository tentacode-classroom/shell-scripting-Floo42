echo "Nettoyage"

CURRENT_DIRECTORY=`dirname $0`
CLEANDIRECTORY="$CURRENT_DIRECTORY/bazar_clean"
rm -rf $CLEANDIRECTORY
mkdir $CLEANDIRECTORY

mkdir -p $CLEANDIRECTORY/images $CLEANDIRECTORY/videos $CLEANDIRECTORY/divers

FILES=`find bazar/ -type f`

for FILE in $FILES
do

file $FILE | grep 'image data' > /dev/null
IS_IMAGE=$?

file $FILE | grep 'ISO Media' > /dev/null
IS_VIDEO=$?
file $FILE | grep 'Matroska data' > /dev/null
IS_VIDEO=$?

if [ $IS_IMAGE == 0 ]
then
MONTH=`date -r $FILE "+%m"`
YEAR=`date -r $FILE "+%Y"`
mkdir -p $CLEANDIRECTORY/images/$YEAR/$MONTH
cp $FILE bazar_clean/images/$YEAR/$MONTH

elif [ $IS_VIDEO == 0 ]
then
cp $FILE bazar_clean/videos

else
cp $FILE bazar_clean/divers

fi

done
