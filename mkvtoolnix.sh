#!/bin/sh
set +v
# set mkvmerge below to location of mkvmerge executable
export mkvmerge="/Volumes/MKVToolNix-8.2.0/MKVToolNix-8.2.0.app/Contents/MacOS/mkvmerge"
if ! [ -e "options.json" ]
then
echo Options file 'options.json' not found. Exiting.
exit 
fi 
if ! [ -e "mkvmerge_out" ]
then
mkdir mkvmerge_out
fi
for f in *.mkv
do 
echo $f
$mkvmerge @options.json -o "mkvmerge_out/${f}" "${f}"
done 
echo Done. 
read -p "Press any key to exit ..."
exit