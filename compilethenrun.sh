#!/bin/bash

javacc src/Prolog.jj
javac *.java
java Prolog < test.pl > test.wam
bash cleanup.sh
gplc test.wam
./test
