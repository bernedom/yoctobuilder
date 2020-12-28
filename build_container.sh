#!/bin/bash

# build without context to speed up and because no files are needed in the Dockerfile
docker build --rm -t yoctobuilder - < Dockerfile