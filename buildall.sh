#!/bin/bash
rm *.hex
export PATH=$PATH:/c/GRBLMAKE/avr/avr/bin:/c/GRBLMAKE/avr/bin

for d in */; do
	( cd "$d" && ./make clean && ./make && cp *.hex ../ )
done
echo "DONE"