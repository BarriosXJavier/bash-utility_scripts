#!/usr/bin/env bash

echo "PC information:"
echo "_______________"

echo "Operating System: $(uname -s)"
echo "Kernel Version: $(uname -r)"
echo "Architecture: $(uname -m)"

echo "CPU information:"
echo "_______________"
lscpu | grep 'Model name'
lscpu | grep 'CPU MHz'
lscpu | grep 'CPU cores'

echo "Memory Information:"
echo "__________________"
free -h

echo "Disk Information:"
echo "_________________"
df -h | grep '/dev/sda'

echo "Network Information:"
echo "__________________"
ip -br addr show | grep 'UP'
