#!/usr/bin/env bash

while getopts ":o:" opt; do
  case $opt in
    o) output_file="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
        exit 1
    ;;
    :) echo "Option -$OPTARG requires an argument." >&2
       exit 1
    ;;
  esac
done
