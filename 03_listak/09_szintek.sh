#!/bin/bash

szintek=(11 22 33)
unset szintek[1]

echo ${szintek[@]}