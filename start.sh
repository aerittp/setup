#!/bin/bash

core=launcher

while true; do
    echo "                                                 "
    echo "  ░█████╗░███████╗██████╗░██╗████████╗████████╗  "
    echo "  ██╔══██╗██╔════╝██╔══██╗██║╚══██╔══╝╚══██╔══╝  "
    echo "  ███████║█████╗░░██████╔╝██║░░░██║░░░░░░██║░░░  "
    echo "  ██╔══██║██╔══╝░░██╔══██╗██║░░░██║░░░░░░██║░░░  "
    echo "  ██║░░██║███████╗██║░░██║██║░░░██║░░░░░░██║░░░  "
    echo "  ╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░░╚═╝░░░░░░╚═╝░░░  "
    echo "                                                 "

    /usr/lib/jvm/bellsoft-java20-full-amd64/bin/java -XX:+UseZGC -XX:+PerfDisableSharedMem -XX:+DisableExplicitGC -jar ${core}.jar

    for i in $(seq 5 -1 1)
    do
        echo "\naeritt : Restart in $i second(s)"
        echo "aeritt : Hold CTRL + C to stop restarting"
        sleep 1s
    done
done
