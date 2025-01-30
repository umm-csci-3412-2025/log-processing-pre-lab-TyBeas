#!/bin/bash

## Regex Exercise 0
awk -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

## Regex Exercise 1
awk 'match($0, /([A-Z][a-zA-Z]+)\..+is\s([a-z]+)\./, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n"}' < r1_input.txt > r1_output.txt

## Regex Exercise 2
awk -E 's/\* sandwich with ([a-zA-Z.]+) ([a-zA-Z ]+)/1. \1\n2. \2\n/' < r2_input.txt > r2_output.txt