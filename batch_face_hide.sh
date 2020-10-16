#!/bin/sh
for file in images/*.jpg; do 
  name=$(basename "$file")
  out="blurred/$name"
  sudo cp "$file" "$out"
  sudo ./facedetect "$file" | while read x y w h; do
    size=30
    offset=15
    lessW=`expr $w - $size`
    lessH=`expr $h - $size`
    moreX=`expr $x + $offset`
    moreY=`expr $y + $offset`
    sudo magick mogrify -gravity NorthWest -region "${lessW}x${lessH}+${moreX}+${moreY}" \
      -scale '10%' -scale '1000%' "$out"
  done
done
