#!/bin/bash
set -a
HOST=$1
COUNT=$2

TOKEN='admin'
for count in $(seq $COUNT); do
    CN_UUID=$(uuidgen)
    CN_TRAITS=COMPUTE_VOLUME_MULTI_ATTACH
    N1_UUID=$(uuidgen)
    N1_TRAITS=HW_CPU_X86_AVX2
    N2_UUID=$(uuidgen)
    N2_TRAITS=HW_CPU_X86_SSE

    gabbi-run -v all $HOST -- make-a-nest.yaml
done
