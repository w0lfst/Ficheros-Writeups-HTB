#!/bin/bash

for ip in $(seq 1 254); do
        timeout 1 bash -c "ping -c 1 172.17.0.$ip" &>/dev/null && echo "HOST 172.17.0.$ip esta activo" &
done; wait
