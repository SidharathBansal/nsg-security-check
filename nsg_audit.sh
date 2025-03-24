#!/bin/bash

# Identify NSGs with Open Ports

az network nsg list --query "[].{Name: name, ResourceGroup: resourceGroup, Rules: securityRules[?sourceAddressPrefix!=null && (contains(sourceAddressPrefix, '*') || contains(sourceAddressPrefix, '0.0.0.0/0'))].{Rule: name, Source: sourceAddressPrefix, Port: destinationPortRange}}" -o json

# Find Unassigned NSGs

az network nsg list --query "[?length(subnets) == `0` && length(networkInterfaces) == `0`].{Name: name, ResourceGroup: resourceGroup}" -o table

