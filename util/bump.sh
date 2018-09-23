#!/bin/bash

# Usage: ./bump.sh <version>
# Tip: Use quotes
files=( "./lib/common" "./lib/clock" "./lib/bspwm" "./lib/net" "./mblpanel")
for _file_ in ${files[@]}
 do
  echo $_file_
  cat $_file_ | sed "s|Version\:.*|Version\: $1|" > $_file_.new
  rm $_file_ && mv $_file_.new $_file_
done
