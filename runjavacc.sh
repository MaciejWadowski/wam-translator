#!/bin/bash

javacc src/Prolog.jj
javac *.java
java Prolog < test.pl
