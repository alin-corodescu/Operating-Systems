#!/bin/bash


declare -i comb

let nk=$1
let nk-=$2
let n_fact=`./ex1.sh $1`
let k_fact=`./ex1.sh $2`
let nk_fact=`./ex1.sh $nk`
let k_fact*=nk_fact
let comb=n_fact/k_fact
echo $comb
