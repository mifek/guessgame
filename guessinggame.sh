#!/usr/bin/env bash

file_count=$(ls $1 | grep ".*" -c)
guess=-1

function hint {
  if [[ $1 -gt $2 ]]
  then
    echo "No, to high"
  elif [[ $1 -lt $2 ]]
  then
    echo "No, to low"
  else
    echo "Right!"
  fi  
}

while [[ $guess -ne $file_count ]]
do
  
  echo "Guess number of files:"
  read guess

  hint $guess $file_count

done
