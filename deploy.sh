#!/bin/bash

aws s3 cp . s3://barlasgarden/ --recursive \
--exclude "*" \
--include "favicon*" \
--include "*.html" \
--include "*.jpg"