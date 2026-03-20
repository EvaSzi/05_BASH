#!/bin/bash

szamlista=(50 60 70)
szamlista+=(80)
szamlista[1]=65
echo ${szamlista[@]}
echo ${#szamlista[@]}