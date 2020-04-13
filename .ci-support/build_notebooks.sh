#!/bin/bash
# Select ipykernelt
if [ "$PYTHONVER" = "2.7" ]; then
    kernel="python2"
else
    kernel="python3"
fi;

# execute notebooks
for notebook in $(find . -name "*.ipynb"); do 
    papermill ${notebook} ${notebook%.*}-out.${notebook##*.} -k $kernel;
done;