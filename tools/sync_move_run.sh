#!/bin/bash
: ${1?"Usage: $0 Please Specify a File"}
git pull
cd ../octopus-15.1/
pwd
cp ../Octopus_Inversion/$1 ./src/electrons/xc_ks_inversion.F90
echo "copied file {$1}"
printf "\n Started at: $(date)\n" >> run_times.log
sudo make install
printf "\n Finished at: $(date)\n" >> run_times.log 
