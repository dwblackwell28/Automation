#!/bin/bash
git add .
git commit -m "Auto-sync: $(date)"
git pull origin main
git push origin main
