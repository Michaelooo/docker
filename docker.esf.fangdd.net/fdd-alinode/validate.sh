#!/bin/bash

which_node=`which node`
which_agenthub=`which agenthub`

echo "verify node and agenthub are installed correctly"
echo "which node results are: $which_node"
if [[ $which_node =~ ".tnvm" ]]
then 
  echo "package node has already installed."
else 
  echo "package node is not installed."
  # exit 1
fi

echo "which agenthub results are: $which_agenthub"
if [[ $which_agenthub =~ ".tnvm" ]]
then 
  echo "package agenthub has already installed."
else 
  echo "package agenthub is not installed."
  # exit 1
fi