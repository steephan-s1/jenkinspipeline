#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u haneef786 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG haneef786/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push haneef786/$IMAGE:$BUILD_TAG
