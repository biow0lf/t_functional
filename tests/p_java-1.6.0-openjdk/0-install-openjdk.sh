#!/bin/bash
# Author: Christoph Galuschka <christoph.galuschka@chello.at>

# Install python
t_Log "Running $0 - installing openjdk runtime/development environment."

t_InstallPackage java-1.6.0-openjdk java-1.6.0-openjdk-devel
