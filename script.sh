#!/bin/bash

keyvaultName="test10101"

# Check if the resource group exists
az keyvault show --name $keyvaultName &> /dev/null

# Validate the exit code to determine existence
if [ $? -eq 0 ]; then
  echo "Keyvault exists: $keyvaultName"
else
  echo "Keyvault does not exist: $keyvaultName"
fi
