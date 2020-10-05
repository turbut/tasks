#!/bin/bash
REGISRTY="iporegistry.azurecr.io"
FILES="/pirma_uzduotis/*"
for TAR_PATH in $FILES; do
    BASE_NAME=$(basename "$TAR_PATH")
    TAR_NAME="${BASE_NAME%.*}"
    IMAGE_NAME="${TAR_NAME%.*}"
    docker load -i "${TAR_PATH}"
    docker tag ${IMAGE_NAME} "$REGISRTY/${IMAGE_NAME}"
    docker push "$REGISRTY/${IMAGE_NAME}"
done