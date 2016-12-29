#!/bin/sh
docker build -t ktruckenmiller/lambda-packager:python .
docker push ktruckenmiller/lambda-packager:python
