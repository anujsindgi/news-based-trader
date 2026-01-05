#!/bin/bash
set -e
LOG_DIR=./logs
mkdir -p $LOG_DIR

DATE = $(date +%Y-%m-%d)

papermill get_data_from_pulse.ipynb logs/get_data_from_pulse_$DATE.ipynb
papermill get_data_from_nse.ipynb logs/get_data_from_nse_$DATE.ipynb
papermill analyze_news_with_api.ipynb logs/analyze_news_with_api_$DATE.ipynb