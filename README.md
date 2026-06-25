Money Throw System - Installation & Setup Guide
📂 Folder Structure
# 💸 Money Throw System - Installation & Setup Guide

## 📂 Folder Structure

```text
MoneyThrow-Free
│
├── ReplicatedStorage
│   ├── MoneyEvent
│   └── ThrowMoneyEvent
│
├── ServerScriptService
│   ├── MoneyServer
│   └── MoneyStats
│
├── StarterGui
│   └── MoneyGui
│
└── StarterPack
    └── MoneyTool
```


1. ReplicatedStorage

Folder ini berisi RemoteEvent yang digunakan sebagai penghubung antara Client dan Server.

📌 MoneyEvent

Digunakan untuk komunikasi mengenai sistem uang.

Contohnya:

Update jumlah uang pemain.
Mengirim informasi saldo ke GUI.
Sinkronisasi data uang.

Jangan dipindahkan ke folder lain.


Path:

```text
ReplicatedStorage
└── MoneyEvent
```

RemoteEvent yang digunakan saat pemain melempar uang.

Saat pemain menekan tombol Throw pada GUI:

GUI
 ↓
ThrowMoneyEvent:FireServer()
 ↓
MoneyServer
 ↓
Spawn uang

Path:

```text
ReplicatedStorage
└── ThrowMoneyEvent
2. ServerScriptService
```

Semua script server berada di sini.

📌 MoneyServer

Script utama sistem Money Throw.

Tugasnya:

menerima ThrowMoneyEvent
mengecek apakah pemain memiliki uang
mengurangi saldo
membuat uang muncul di dunia
memberi physics pada uang
mengirim update saldo

Path:

```text
ServerScriptService
└── MoneyServer
```

Jangan dipindahkan.

📌 MoneyStats

Script yang membuat Leaderstats pemain.

Biasanya berisi:

```text
leaderstats
└── Money
```

Script ini dijalankan ketika pemain join.

Path:

```text
ServerScriptService
└── MoneyStats
```

3. StarterGui

Berisi seluruh tampilan GUI.

📌 MoneyGui

GUI utama.

Biasanya berisi:

```text
MoneyGui
│
├── Throw Button
├── Nominal Button
│     ├── 1000
│     ├── 2000
│     ├── 5000
│     ├── dst...
│
└── Money Display
```

Fungsinya:

memilih nominal
melempar uang
menampilkan saldo

Path:

```text
StarterGui
└── MoneyGui
```

4. StarterPack
📌 MoneyTool

Tool yang otomatis diberikan kepada pemain.

Fungsi:

Equip Tool
Membuka GUI
Mengaktifkan animasi
Memanggil ThrowMoneyEvent

Path:

```text
StarterPack
└── MoneyTool
Cara Kerja Sistem
Player
      │
      ▼
Equip MoneyTool
      │
      ▼
MoneyGui muncul
      │
      ▼
Pilih Nominal
      │
      ▼
Klik Throw
      │
      ▼
ThrowMoneyEvent
      │
      ▼
MoneyServer
      │
      ├── Cek Saldo
      ├── Kurangi Uang
      ├── Spawn Uang
      └── Update GUI
```

Dependency

Pastikan seluruh objek berada di lokasi berikut:

```text
ReplicatedStorage
├── MoneyEvent
└── ThrowMoneyEvent

ServerScriptService
├── MoneyServer
└── MoneyStats

StarterGui
└── MoneyGui

StarterPack
└── MoneyTool
```
## Jangan Mengubah!!!

```text
Agar sistem tetap berjalan normal, jangan:

❌ Mengganti nama MoneyEvent
❌ Mengganti nama ThrowMoneyEvent
❌ Memindahkan MoneyServer
❌ Memindahkan MoneyStats
❌ Mengubah nama MoneyTool
❌ Mengubah nama MoneyGui

Karena script menggunakan nama dan lokasi tersebut untuk saling berkomunikasi.
```

Cara Instalasi
```text
Salin folder MoneyThrow-Free ke dalam game Roblox Studio.
Pastikan seluruh isi folder berada pada service yang benar:
MoneyEvent dan ThrowMoneyEvent → ReplicatedStorage
MoneyServer dan MoneyStats → ServerScriptService
MoneyGui → StarterGui
MoneyTool → StarterPack
Jalankan game (Play atau Play Here) untuk memastikan tool muncul dan GUI berfungsi.
Equip MoneyTool, pilih nominal pada MoneyGui, lalu tekan tombol Throw untuk melempar uang.

Dengan struktur di atas, sistem akan bekerja sesuai alur komunikasi Client ↔ Server yang telah disiapkan.
```
