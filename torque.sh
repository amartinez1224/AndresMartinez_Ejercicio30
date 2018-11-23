#!/bin/bash
#PBS -l nodes=1:ppn=10,mem=64gb,walltime=02:00
#PBS -M a.martinez@uniandes.edu.co
#PBS -m abe
#PBS -N Programa

#cd /hpcfs/home/fisi4028/a.martinez/AndresMartinez_Ejercicio30
cd $PBS_O_WORKDIR

export OMP_NUM_THREADS=10
gcc -fopenmp walkParalelo.c -o walkParalelo
cc walkSerial.c -o walkSerial

./walkParalelo > b.txt
./walkSerial > a.txt
python3 graficar.py
