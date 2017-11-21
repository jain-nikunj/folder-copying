# Usage: Copy folder $1 from lz for $2 to local
COPYUSER=$2
rsync -a $COPYUSER@sc2-lz:/share/nas/uc-berkeley/$1 $1
