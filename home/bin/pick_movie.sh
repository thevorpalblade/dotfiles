#!/bin/bash
find ~/data/Movies -size +300M | grep -v TV | sort -R | head -1

