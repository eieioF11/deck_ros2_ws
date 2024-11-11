#!/bin/bash

vcs import --recursive < src.repos
vcs pull src

sudo apt update
rosdep update
rosdep install -yi --rosdistro humble --from-paths .