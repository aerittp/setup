#!/bin/bash

core=launcher
max_memory=512
min_memory=$(($max_memory / 2))

while true; do
    echo "                                                 "
    echo "  ░█████╗░███████╗██████╗░██╗████████╗████████╗  "
    echo "  ██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝╚══██╔══╝  "
    echo "  ███████║█████╗░░██████╔╝██║░░░██║░░░░░░██║░░░  "
    echo "  ██╔══██║██╔══╝░░██╔══██╗██║░░░██║░░░░░░██║░░░  "
    echo "  ██║░░██║███████╗██║░░██║██║░░░██║░░░░░░██║░░░  "
    echo "  ╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░░╚═╝░░░░░░╚═╝░░░  "
    echo "                                                 "

    /usr/lib/jvm/bellsoft-java20-full-amd64/bin/java -XX:+UseZGC -XX:+PerfDisableSharedMem -XX:+DisableExplicitGC -Xmx${max_memory}m -Xms${min_memory}m -jar launcher.jar

    for i in $(seq 5 -1 1)
    do
        echo "\naeritt : Restart in $i second(s)"
        echo "aeritt : Hold CTRL + C to stop restarting"
        sleep 1s
    done
done
