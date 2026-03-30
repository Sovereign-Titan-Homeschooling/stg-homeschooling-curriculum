#!/bin/bash
# --- MAKRONESIA ROBOTIC LEDGER v1 ---
# Sistem pencatatan hasil tambang otomatis per unit robot.

LOG_FILE="logs/mining_assets.log"
mkdir -p logs

echo "--------------------------------------------------"
echo "🏦 MAKRONESIA SOVEREIGN TREASURY: ROBOTIC LEDGER"
echo "--------------------------------------------------"

# Masukkan Data dari Harvester
read -p "🤖 ID Robot (e.g., Harvester-001): " ROBOT_ID
read -p "💎 Berat Emas Ditemukan (Gram): " GOLD_WEIGHT
read -p "📊 Konsumsi Energi (%): " ENERGY_USED

# Hitung Valuasi (Asumsi 1 Gram = $65 USD / Rp1.000.000)
VALUATION=$((GOLD_WEIGHT * 1000000))
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Simpan ke Ledger Permanen
echo "[$TIMESTAMP] UNIT: $ROBOT_ID | YIELD: $GOLD_WEIGHT g | ENERGY: $ENERGY_USED% | VALUE: Rp$VALUATION" >> $LOG_FILE

echo "✅ DATA TERKUNCI DI LEDGER."
echo "💰 Total Nilai Aset Masuk: Rp$VALUATION"
echo "--------------------------------------------------"
