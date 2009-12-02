#!/bin/sh

mxmlFiles=`find $EUCHRIA_ROOT/src/ -name '*.mxml' -print`

for mxml in ${mxmlFiles}; do
        echo "building $mxml"
        mxmlc ${mxml}
done
