convert $1.pdf -crop 50x100% png:$1
for f in $1-*; do 
convert $f -flatten -resize 1X1000! -black-threshold 99% -white-threshold 10% -negate -morphology Erode Diamond -morphology Thinning:-1 Skeleton -black-threshold 50% txt:-| sed -e '1d' -e '/#000000/d' -e 's/^[^,]*,//' -e 's/[(]//g' -e 's/:.*//' -e 's/,/ /g' > $f.txt;
done