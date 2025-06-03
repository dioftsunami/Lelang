Kelas C Kelompok 2

Anggota Kelompok :
Louis Fernando Ega (220711970) - backend, integrasi, dan hosting backend
Diof Tsunami Firdaus (220711694) - frontend guest, components(logika navbar dan footer)
Gabriel Mario Binsar (220711815) - frontend user, app routes dan page pendukung
Russel (220711900) - front end admin, hosting frontend

Username & Password Login :
Login User :
- Username : user@gmail.com
- Password : 12345678

Login Admin:
- Username : admin@admin.com
- Password : 12345678

Bonus yang diambil:
1. Hosting
   - Backend : https://mediumpurple-bear-679609.hostingersite.com/
   - Frontend : https://palegreen-raccoon-366433.hostingersite.com/
     
2. Routes API :
   
# Public Routes
POST    /api/register            - Mendaftarkan pengguna baru
POST    /api/login               - Login pengguna dan mendapatkan token
GET     /api/lelangs             - Mendapatkan semua data lelang (publik)

# Protected Routes (Sanctum Authentication Required)
POST    /api/logout              - Logout pengguna (menghapus token autentikasi)

# User Routes
GET     /api/user                - Mendapatkan data pengguna yang sedang login,
PUT     /api/user                - Memperbarui profil pengguna yang sedang login,
GET     /api/users               - Mendapatkan semua data pengguna (Admin)

# Barang Routes
GET     /api/barang              - Mendapatkan semua item,
GET     /api/barang/{id}         - Mendapatkan detail item berdasarkan ID,
POST    /api/barang              - Menambahkan item baru,
PUT     /api/barang/{id}         - Memperbarui item berdasarkan ID,
DELETE  /api/barang/{id}         - Menghapus item berdasarkan ID

# Lelang Routes
GET     /api/lelang              - Mendapatkan semua data lelang,
GET     /api/lelang/{id}         - Mendapatkan detail lelang berdasarkan ID,
POST    /api/lelang              - Menambahkan data lelang baru,
PUT     /api/lelang/{id}         - Memperbarui data lelang berdasarkan ID,
DELETE  /api/lelang/{id}         - Menghapus data lelang berdasarkan ID,
POST    /api/auctions/{id}/end   - Mengakhiri lelang dan menyimpan transaksi

# Bids Routes
GET     /api/bids/{id_lelang}    - Mendapatkan semua bid untuk lelang tertentu,
POST    /api/bids                - Membuat bid baru,
GET     /api/bids/{id}           - Mendapatkan detail bid berdasarkan ID,
DELETE  /api/bids/{id}           - Menghapus bid berdasarkan ID,
GET     /api/bids/user/{id_user} - Mendapatkan semua bid yang dibuat oleh pengguna,
PUT     /api/bids/{id}           - Memperbarui data bid (misal, `is_winning`)

# Transactions Routes
GET     /api/transactions                - Mendapatkan semua transaksi,
POST    /api/transactions                - Membuat transaksi baru,
GET     /api/transactions/{id}           - Mendapatkan detail transaksi berdasarkan ID,
PUT     /api/transactions/{id}           - Memperbarui transaksi berdasarkan ID,
DELETE  /api/transactions/{id}           - Menghapus transaksi berdasarkan ID,
GET     /api/transactions/user/{id_user} - Mendapatkan semua transaksi berdasarkan ID pengguna

3.  React :
   - Link Repository : https://github.com/nandoega/PW_C_2_React.git

  
