#!/bin/bash

docker run \
--rm \
--entrypoint bash \
-v $(pwd):/workspace \
-w /workspace \
python:3.13.1-bookworm -c "apt-get update && apt-get install -y wkhtmltopdf && pip install pdfkit && python resume.py"