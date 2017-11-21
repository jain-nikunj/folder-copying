# Usage : For all files in range $1 - $2, match the pattern RESERVATION-$i
# and copy any files which match $4 into directory $3

LOW=$1
HIGH=$2
OUTPUT=$3
REGEX=$4

# Deletes all content of $OUTPUT folder
if [ -d "$OUTPUT" ]; then
  rm -rf "$OUTPUT"
fi
mkdir "$OUTPUT"

for i in $(seq $LOW $HIGH)
do
  FOLDER_NAME="RESERVATION-${i}"
  echo $FOLDER_NAME
  if [ -d "$FOLDER_NAME" ]; then
    echo $FOLDER_NAME
    rsync -a --include="${REGEX}" --include='*/' --exclude='*' $FOLDER_NAME/ $OUTPUT/$FOLDER_NAME
  fi
done
