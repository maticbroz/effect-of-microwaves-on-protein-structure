#!/bin/sh

bin/md @topo topology.top @conf equilibration.cnf @input md_1.imd @fin md_1.cnf @trc md_1.trc @tre md_1.tre > md_1.log
wait

if [ -f md_1.trc ]; then
    gzip -f md_1.trc
fi
if [ -f md_1.tre ]; then
    gzip -f md_1.tre
fi

wait


