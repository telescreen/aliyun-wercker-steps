#!/bin/bash

# Build Image
pip install aliyuncli
pip install aliyun-python-sdk-slb aliyun-python-sdk-ecs
pip install aliyun-python-sdk-rds aliyun-python-sdk-oss aliyun-python-sdk-r-kvstore
pip install aliyun-python-sdk-sts aliyun-python-sdk-ess

printf "$WERCKER_ALIYUN_BUILD_ECS_IMAGE_ACCESS_KEY_ID\n$WERCKER_ALIYUN_BUILD_ECS_IMAGE_ACCESS_KEY_SECRET\n$WERCKER_ALIYUN_BUILD_ECS_IMAGE_REGION_ID\n\n\n" | aliyuncli configure
DATE=`date +%Y%m%d%H%M%S`

aliyuncli ecs CreateImage --AccessKeyId ${WERCKER_ALIYUN_BUILD_ECS_IMAGE_ACCESS_KEY_ID} --AccessKeySecret ${WERCKER_ALIYUN_BUILD_ECS_IMAGE_ACCESS_KEY_SECRET} --RegionId ${WERCKER_ALIYUN_BUILD_ECS_IMAGE_REGION_ID} --InstanceId ${WERCKER_ALIYUN_BUILD_ECS_IMAGE_INSTANCE_ID} --ImageName ${WERCKER_ALIYUN_BUILD_ECS_IMAGE_IMAGE_NAME}_${DATE}
