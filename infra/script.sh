#!/bin/bash
RESOURCE_GROUP_NAME=$1
APP_SERVICE_PLAN_NAME=$2
WEB_APP_NAME=$3

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "manadatory params not provided"
    echo "usage: ./script.sh <resource-group-name> <app-service-plan-name> <webapp-name>"
    exit 1
fi

az group create -n $RESOURCE_GROUP_NAME -l westus

az appservice plan create -n $APP_SERVICE_PLAN_NAME -g $RESOURCE_GROUP_NAME --sku FREE

az webapp create -n $WEB_APP_NAME -g $RESOURCE_GROUP_NAME --plan $APP_SERVICE_PLAN_NAME --runtime "DOTNET|6.0"