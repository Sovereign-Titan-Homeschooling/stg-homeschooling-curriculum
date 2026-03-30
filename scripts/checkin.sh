#!/bin/bash
DATE=$(date "+%Y-%m-%d %H:%M:%S")
echo "🏛️ STG CHECK-IN: $DATE - Membangun Estafet Kedaulatan Makronesia." >> attendance.log
git add attendance.log
git commit -m "Attendance Check-in: $DATE [Sovereign Legacy]"
git push origin main
echo "✅ Kehadiran tercatat. Estafet kedaulatan berlanjut ke generasi berikutnya."
