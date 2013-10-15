#!/bin/bash

PROJECTS=(
    'Bundle-Unicheck'
    'App-Unicheck'
    'App-Unicheck-Modules-HTTP'
    'App-Unicheck-Modules-Redis'
    'App-Unicheck-Modules-MongoDB'
    'App-Unicheck-Modules-MySQL'
)

if [[ ! -d dists ]]
then
    mkdir dists
fi

for project in ${PROJECTS[@]}
do
    cd $project
    perl Build.PL
    ./Build installdeps
    ./Build install
    ./Build clean
    cd ..
done

exit 0


