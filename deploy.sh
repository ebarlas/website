#!/bin/bash

aws s3 cp . s3://barlasgarden/ --recursive \
--exclude "*" \
--include "favicon*" \
--include "*.html" \
--include "*.pdf" \
--include "*.jpg"

aws cloudfront create-invalidation \
--distribution-id E55WEWI99JZUV \
--paths /index.html /resume.html /resume.pdf /profile.jpg /favicon.ico