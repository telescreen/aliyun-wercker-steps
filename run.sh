#!/bin/bash

# Build Image
pip install aliyuncli
pip install aliyun-python-sdk-slb aliyun-python-sdk-ecs
pip install aliyun-python-sdk-rds aliyun-python-sdk-oss aliyun-python-sdk-r-kvstore
pip install aliyun-python-sdk-sts aliyun-python-sdk-ess

aliyuncli ecs CreateImage --AccessKeyId $WERCKER_ALIYUN_BUILD_ECS_IMAGE_ACCESS_KEY_ID --AccessKeySecret $WERCKER_ALIYUN_BUILD_ECS_IMAGE_ACCESS_KEY_SECRET --RegionId $WERCKER_ALIYUN_BUILD_ECS_IMAGE_REGION_ID --InstanceId $WERCKER_ALIYUN_BUILD_ECS_IMAGE_INSTANCE_ID --ImageName $WERCKER_ALIYUN_BUILD_ECS_IMAGE_IMAGE_NAME
