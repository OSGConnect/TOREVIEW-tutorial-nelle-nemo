#!/bin/bash
for filename in $*
do
	date
	echo Now processing $filename...

	./goostats -J 100 -r $filename stats-$filename
done
