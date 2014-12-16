#!/bin/bash

echo "Universe = vanilla"
echo
echo "Executable = do-stats.sh"
echo
echo 'Log = log/cluster.log'
echo 'Output = log/job.output.$(Cluster)-$(Process)'
echo 'Error = log/job.error.$(Cluster)-$(Process)'
echo
echo '# Now begins the enqueueing of many jobs:'

for file in $*
do
	echo
	echo "Transfer_Input_Files = $file"
	echo "Transfer_Output_Files = stats-$file"
	echo 'Queue'
done
