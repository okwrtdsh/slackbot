#!/bin/bash
set -e
export PYTHONPATH=/app
if [ ! -f /app/plugins/__init__.py ]; then
	touch /app/plugins/__init__.py
fi
pip3 install -r /requirements.txt
python3 /app/run.py
