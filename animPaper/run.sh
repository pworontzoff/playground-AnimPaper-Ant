#!/bin/sh

make && ./paper
echo "TECHIO> open -s /project/target output.html"
echo 'TECHIO> message --channel "out" <span style="color:red">Hello</span> world !'
