#!/bin/bash

echo "Universe = vanilla"
echo
echo "Executable = do-stats.sh"
echo
echo 'Log = log/cluster.$(Cluster).log'
echo 'Output = log/job.output.$(Cluster)-$(Process)'
echo 'Error = log/job.error.$(Cluster)-$(Process)'
echo
echo '# Now begins the enqueueing of many jobs:'

for file in $*
do
	echo
	echo "Arguments = $file"
	echo "Transfer_Input_Files = goostats, $file"
	echo 'Queue'
done
