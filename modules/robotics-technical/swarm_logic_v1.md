# 🤖 TEKNIS ROBOTIKA: SWARM INTELLIGENCE (LOGIKA KOLONI)
**Tujuan**: Menggerakkan 10.000 unit Harvester sebagai satu kesatuan.

## 1. Arsitektur Komando (Decentralized Control)
Robot Makronesia tidak dikendalikan satu per satu dari Bumi (karena delay sinyal). 
- **Master Unit**: Satu robot bertindak sebagai relay data.
- **Worker Units**: Mengeksekusi pengeboran berdasarkan data Master.
- **Mesh Network**: Jika satu robot hancur, robot lain otomatis mengambil alih rutenya.

## 2. Sensor & Persepsi (The Eyes)
- **LIDAR Scanner**: Memetakan bentuk asteroid secara 3D.
- **Spectrometer**: Menganalisis kandungan mineral (Emas vs Batuan Biasa).
- **Thermal Imaging**: Mendeteksi kantong gas berbahaya di dalam asteroid.

## 3. Algoritma "Anti-Debt" (Efisiensi Energi)
Robot harus menghitung rasio biaya energi vs hasil tambang.
- Jika energi < 10% -> Robot harus kembali ke pangkalan Act-Ark untuk pengisian tenaga surya.
- Prioritas: Logam Platinum > Emas > Besi.
