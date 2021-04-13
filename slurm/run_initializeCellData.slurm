#!/bin/bash
#
## #SBATCH -p wmglab
#SBATCH --time=00:05:00
#SBATCH -o job_out/init_data.out
#SBATCH -e job_out/init_data.err
#SBATCH --job-name=init_tms
#SBATCH -c 4 

# run initialize_cell_data()
# generates cell model data and 6 neuron populations
main_fold="/scratch/work/laurinj1/TMSsim_Aberra2019/" # or replace with absolute path to TMSsim_Aberra2019/
cd ${main_fold}/mat # go to matlab code directory
module load matlab
matlab -nodisplay -nodesktop -nosplash -r "initializeCellData()"
