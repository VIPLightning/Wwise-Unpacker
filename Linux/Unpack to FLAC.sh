#! /bin/bash

./Tools/quickbms  "Tools/wavescan.bms" "Game Files" "Tools/Decoding"
for b in Game\ Files/*.bnk; do "./Tools/bnkextr" $b; done
mv Game\ Files/*.wem Tools/Decoding
for c in Tools/Decoding/*.wem; do "./Tools/vgmstream-cli" -o "?f.wem2" $c; done
for d in Tools/Decoding/*.wem2; do mv "$d" "FLAC"; done

clear

echo
echo
echo "---------------------FLAC Level--------------------"
echo
echo "-1 (fast Compression)"
echo "-2"
echo "-3"
echo "-4"
echo "-5"
echo "-6"
echo "-7"
echo "-8 (Best compression) "

read -p "Please choose a FLAC compression level 1-8" ans;
case $ans in

  1)
     for f in FLAC/*.wem2; do flac $f --fast; done
     rm FLAC/*.wem2;done
     ;;
  2)
     for f in FLAC/*.wem2; do flac $f -f -2; done
     rm FLAC/*.wem2;done 
     ;;
  3)
     for f in FLAC/*.wem2; do flac $f -f -3; done
     rm FLAC/*.wem2;done
     ;;
  4)
     for f in FLAC/*.wem2; do flac $f -f -4; done
     rm FLAC/*.wem2;done
     ;;
  5)
     for f in FLAC/*.wem2; do flac $f -f -5; done
     rm FLAC/*.wem2;done
     ;;
  6)
     for f in FLAC/*.wem2; do flac $f -f -6; done
     rm FLAC/*.wem2;done
     ;;
  7)
     for f in FLAC/*.wem2; do flac $f -f -7; done
     rm FLAC/*.wem2;done
     ;;
  8)
     for f in FLAC/*.wem2; do flac $f --best; done
     rm FLAC/*.wem2;done
     ;; 
   *)
     echo "invalid option"
     ;;
esac

cat tornado.txt

echo
echo "-------------------------------------------------------------"

echo "Unpack finished! Files should be in the 'FLAC' folder"

echo "-------------------------------------------------------------"
echo

echo 

read -p "Should I delete BNKs and PCKs from the Game Files folder? [Y/N]" ans;
case $ans in
  y|Y) 
     for e in Game\ Files/*.PCK; do rm $e; done 
     echo "Files deleted, enjoy your unpacked audio! -/u/Vextil ;)";;
     
  n|N)
     echo "BNKs and PCKs kept, enjoy your unpacked audio! -/u/Vextil ;)";;
  *) 
     echo "invalid option";;
esac
