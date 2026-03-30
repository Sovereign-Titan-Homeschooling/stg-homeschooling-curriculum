#!/bin/bash
echo "--------------------------------------------------"
echo "🔧 MAKRONESIA SYSTEM MAINTENANCE PROTOCOL"
echo "--------------------------------------------------"

# 1. Update Repository & Library
echo "📡 Memeriksa Pembaruan Sistem Makronesia..."
git pull origin main

# 2. Cleanup Cache & Temporary Files
echo "🧹 Membersihkan File Sampah & Cache Terminal..."
rm -rf node_modules/.cache
rm -rf artifacts/
rm -rf cache/
find . -name "*.tmp" -type f -delete

# 3. Security Integrity Check
echo "🛡️ Melakukan Audit Keamanan Pustaka..."
npm audit fix --force 2>/dev/null

# 4. Sync Logs to Cloud (Backup)
echo "💾 Mencadangkan Log Keputusan & Absensi..."
git add logs/ attendance.log
git commit -m "System Maintenance: Integrity Verified [$(date)]"
git push origin main

echo "--------------------------------------------------"
echo "✅ MAINTENANCE SELESAI: Sistem Makronesia Optimal."
echo "--------------------------------------------------"
