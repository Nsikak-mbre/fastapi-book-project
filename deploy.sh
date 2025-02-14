#!/bin/bash

cd ~/fastapi-book-project
git pull origin main
source venv/bin/activate
pip install -r requirements.txt
sudo systemctl restart nginx
uvicorn main:app --host 0.0.0.0 --port 8000 --reload
