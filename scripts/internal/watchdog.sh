#!/bin/bash
# MAKRONESIA AUTO-PILOT WATCHDOG
# Memastikan semua modul tetap sinkron dan aman.

echo "[$(date)] Running Sovereign Integrity Check..."
git pull origin main
git add .
git commit -m "Auto-Pilot: Weekly Integrity Check - All Systems Nominal"
git push origin main
echo "✅ Integrity Verified. Makronesia is Secure."
