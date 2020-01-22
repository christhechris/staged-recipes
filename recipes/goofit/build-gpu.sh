#!/usr/bin/env bash
set -evx

export MAKEFLAGS="-j2"

export CFLAGS="${CFLAGS} -I/usr/include"
export CXXFLAGS="${CXXFLAGS} -I/usr/include"

rm pyproject.toml || echo "Already removed pyproject file"
python -m pip install . -vv

