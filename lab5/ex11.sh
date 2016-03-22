#!/bin/bash

dir=$1

touch ~/html/playlist
chmod a+r ~/html/playlist
chmod a+x ~/html
chmod a+x ~/html/muzica
for item in `find $dir -mindepth 1 -maxdepth 1 -name "*.mp3"`
do
	muzica="~/html/muzica"
	ln -P $item $muzica
	name=`basename $item .mp3`
	echo "<a href=$item> $name </a>" >> ~/html/playlist
done
