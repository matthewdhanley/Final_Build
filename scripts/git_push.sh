#!/bin/bash
DIR=$(pwd | grep -o "\w*-*$")
if [ "$DIR" != "Final_Build" ]; then
    cd ..
fi
cd src/
for d in */; do
  cd $d
  for subd in */; do
      cd $subd
      git add *
      git commit -m "auto push"
      git push origin master
      cd ..
  done
  cd ..
done
