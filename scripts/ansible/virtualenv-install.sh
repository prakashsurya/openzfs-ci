#!/bin/bash -e

TOP=$(git rev-parse --show-toplevel 2>/dev/null)

if [[ -z "$TOP" ]]; then
	echo "Must be run inside the git repsitory."
	exit 1
fi

virtualenv $TOP/ansible/venv
source $TOP/ansible/venv/bin/activate
pip install ansible==2.2
