#!/bin/bash
#script to convert .doc to kindle format
#modified from a one liner from climagic

for i in *.doc; do 
	abiword --to=html "$i";
	ebook-convert "${i%.doc}.html" "${i%.doc}.mobi" --output-profile="kindle";
done # convert doc to epub


