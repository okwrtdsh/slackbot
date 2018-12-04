#!/bin/bash
set -e
export PYTHONPATH=/app
pip3 install -r /app/requirements.txt
python3 /app/run.py
