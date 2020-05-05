#!/bin/bash

javacc src/Fact.jj
javac *.java
java Fact < test.pl
