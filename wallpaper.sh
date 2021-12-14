#!/bin/bash

WP_DIR=~/Pictures/wallpapers/
BG_LIST=($WP_DIR/*)
N=${#BG_LIST[@]}
((N=RANDOM%N))
RAND_BG=$(basename ${BG_LIST[$N]})

echo $RAND_BG > cur_bg.txt
feh --bg-fill $WP_DIR/$RAND_BG
