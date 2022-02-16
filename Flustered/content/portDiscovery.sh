#!/bin/bash

for puerto in $(seq 1 65535); do
        timeout 1 bash -c "echo '' > /dev/tcp/172.17.0.2/$puerto" 2>/dev/null && echo "Puerto $puerto abierto" &
done; wait
