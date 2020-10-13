#!/bin/sh

make && ./paper
echo "TECHIO> open --static-dir /project/target output.html"
