#!/bin/bash

for f in *.CR2; do
mv -- "$f" "${f%.CR2}.jpeg"
done