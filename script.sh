#!/bin/bash

keyvaultName="$1"
keyvaultLocation="$2"
keyvaultGroup="$3"

# Check if the resource group exists
az keyvault show --name $keyvaultName &> /dev/null

# Validate the exit code to determine existence
if [ $? -eq 0 ]; then
  echo "Keyvault exists: $keyvaultName"
else
  echo "start creating keyvault"
  az keyvault create -n $keyvaultName -l $keyvaultLocation -g $keyvaultGroup
  echo "Finish creating vault"
fi
