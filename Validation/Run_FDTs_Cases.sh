#!/bin/bash -f

# This script runs the FDTs cases on a linux machine with
# a batch queuing system

export SVNROOT=`pwd`/..
export FDTs=$SVNROOT/Utilities/Data_Processing/FDTs
export VDIR=$SVNROOT/Validation

# First, compile latest version of FDTs.f90

cd $SVNROOT/Utilities/Data_Processing
ifort FDTs.f90 -o FDTs

# Then, run all FDTs cases

cd $VDIR/CAROLFIRE/FDTs
$FDTs CAROLFIRE_THIEF_Inputs.txt

cd $VDIR/Fleury_Heat_Flux/FDTs
$FDTs Fleury_Heat_Flux_FDTs_Input.txt

cd $VDIR/FM_SNL/FDTs
$FDTs FM_SNL_FDTs_Input.txt

cd $VDIR/Hamins_CH4/FDTs
$FDTs Hamins_FDTs_Input.txt

cd $VDIR/LLNL_Enclosure/FDTs
$FDTs LLNL_FDTs_Input.txt

cd $VDIR/NBS_Multi-Room/FDTs
$FDTs NBS_Multi-Room_FDTs_Input.txt

cd $VDIR/NIST_Dunes_2000/FDTs
$FDTs NIST_Dunes_2000_FDTs_Input.txt

cd $VDIR/NIST_NRC/FDTs
$FDTs NIST_NRC_FDTs_Input.txt

cd $VDIR/NRL_HAI/FDTs
$FDTs NRL_HAI_FDTs_Input.txt

cd $VDIR/SP_AST/FDTs
$FDTs SP_AST_FDTs_Input.txt

cd $VDIR/Steckler_Compartment/FDTs
$FDTs Steckler_MQH_Inputs.txt

cd $VDIR/UL_NFPRF/FDTs
$FDTs UL_NFPRF_FDTs_Input.txt

cd $VDIR/Ulster_SBI/FDTs
$FDTs Ulster_SBI_FDTs_Input.txt

cd $VDIR/USN_Hangars/FDTs
$FDTs USN_Hangars_FDTs_Input.txt

cd $VDIR/Vettori_Flat_Ceiling/FDTs
$FDTs Vettori_FDTs_Input.txt

cd $VDIR/VTT/FDTs
$FDTs VTT_FDTs_Input.txt

cd $VDIR/WTC/FDTs
$FDTs WTC_FDTs_Input.txt

echo FDTs cases complete
