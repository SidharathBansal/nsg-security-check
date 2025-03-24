#!/bin/bash

echo "Fetching unassigned NSGs..."

NSG_LIST=$(az network nsg list --query "[?length(subnets) == `0` && length(networkInterfaces) == `0`].{Name: name, ResourceGroup: resourceGroup}" -o json)

echo "$NSG_LIST" | jq -c '.[]' | while read -r nsg; do
    NAME=$(echo "$nsg" | jq -r '.Name')
    RG=$(echo "$nsg" | jq -r '.ResourceGroup')
    echo "Deleting NSG: $NAME in Resource Group: $RG..."
    az network nsg delete --name "$NAME" --resource-group "$RG"
done

echo "Unassigned NSGs deleted successfully!"
