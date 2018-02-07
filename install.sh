#!/usr/bin/env bash

# Prereqs
sudo apt-get update -qq && \
sudo apt-get install -y \
  pkg-config gfortran libhdf5-dev libfreetype6-dev liblapack-dev \
  python python-setuptools python-dev python-pip python-tk ffmpeg

sudo -H pip install --upgrade pip
pip install --user numpy scipy matplotlib notebook pandas sympy nose scikit-learn h5py

# vmaf
git submodule update --init --recursive
make
./unittest

