#!/bin/bash

if [ -z "$SLAVE_NAME" ]; then
    echo "Need to set SLAVE_NAME env. var before running run_default_suite.bash!"
    exit 1
fi

source build_env.bash

emcc --clear-cache

python -u tests/runner.py
