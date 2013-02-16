#!/bin/sh

rm -f keys base_rpms
ln -sf keys_$DIST keys
ln -sf base_rpms_$DIST base_rpms

createrepo -q -g $PWD/comps-qubes-template.xml yum_repo_qubes/$DIST -o yum_repo_qubes/$DIST