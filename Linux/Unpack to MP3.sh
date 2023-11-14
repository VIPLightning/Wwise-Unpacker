#! /bin/bash

./Tools/quickbms  "Tools/wavescan.bms" "Game Files" "Tools/Decoding"
for c in Tools/Decoding/*.wem; do "./Tools/vgmstream-cli" -o "?f.wem2" $c; done
for d in Tools/Decoding/*.wem2; do mv "$d" "MP3"; done
for f in MP3/*.wem2 do ffmpeg -i $f  -acodec libmp3lame -b:a 320k -ac 2 -ar 44100 "MP3/%%~nd.mp3"; done
rm MP3/*.wem2

cat tornado.txt

echo
echo "-------------------------------------------------------------"

echo "Unpack finished! Files should be in the 'MP3' folder"

echo "-------------------------------------------------------------"
echo

echo 

read -p "Should I delete BNKs and PCKs from the Game Files folder? [Y/N]" ans;
case $ans in
  y|Y) 
     for e in "Game Files/*.PCK"; do rm $e; done 
     echo "Files deleted, enjoy your unpacked audio! -/u/Vextil ;)";;
     
  n|N)
     echo "BNKs and PCKs kept, enjoy your unpacked audio! -/u/Vextil ;)";;
  *) 
     echo "invalid option";;
esac
     
 
if [ $? -eq 0 ]
then
   echo "Exit code returned 0! Successful!"
else 
   echo "Exit code returned $?! Houston we have a problem!"
fi
