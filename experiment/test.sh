#!/bin/bash

for periodScalr in 2 5 10 20 50
do
    for taskLen in 100 1000 10000
        do
            echo '----------------------------'
            echo 'periodScalar:'$periodScalr
            echo 'taskLen:'$taskLen
            #sed  -i '' '1s/.*$/Hi/g' ./config.tgffopt
            sed -i '' "23s/.*$/series_len $periodScalr 3/g" ./config.tgffopt
            sed -i '' "39s/.*$/type_attrib exec_time $taskLen 20/g" ./config.tgffopt
            #../tgff config
            #../python main.py ??
        done
done
