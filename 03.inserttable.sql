INSERT INTO pelanggan (nama, nomor_telepon, alamat) VALUES
('Ajeng', '081234567890', 'Bandung Raya'),
('Dodo', '082345678901', 'Cikarang Pusat'),
('Bagas', '083456789012', 'Jakarta Barat'),
('Eva', '084567890123', 'Surabaya Timur'),
('Fika', '085678901234', 'Semarang Utara'),
('Gilang', '086789012345', 'Yogyakarta Selatan'),
('Hana', '087890123456', 'Malang Tengah'),
('Irfan', '088901234567', 'Denpasar Barat'),
('Joko', '089012345678', 'Solo Timur'),
('Kiki', '081123456789', 'Medan Pusat'),
('Lina', '082234567890', 'Pekanbaru Utara'),
('Mika', '083345678901', 'Bandar Lampung Selatan'),
('Nina', '084456789012', 'Makassar Baru'),
('Oscar', '085567890123', 'Manado Utara'),
('Pandu', '086678901234', 'Palembang Selatan');

INSERT INTO kategori_product (nama_kategori) VALUES
('Elektronik'),
('Fashion'),
('Otomotif'),
('Buku'),
('Kesehatan'),
('Olahraga'),
('Perhiasan'),
('Alat Rumah Tangga'),
('Mainan'),
('Hobi'),
('Makanan'),
('Minuman'),
('Kecantikan');

INSERT INTO products (nama_product, kategori_id, harga) VALUES
('Laptop', 1, 8000000),
('Dress', 2, 350000),
('Mobil', 3, 300000000),
('Buku_pemrograman', 4, 150000),
('Vitamin', 5, 50000),
('Sepatu', 6, 200000),
('Anting', 7, 750000),
('Blender', 8, 300000),
('ActionFigure', 9, 100000),
('Cat', 10, 25000),
('Snack', 11, 20000),
('Air', 12, 5000),
('Lipstik', 13, 75000),
('Smartphone', 1, 12000000),
('T-shirt', 2, 150000),
('Motor', 3, 25000000),
('Novel', 4, 80000),
('Masker', 5, 10000),
('SepatuFutsal', 6, 180000),
('Gelang', 7, 500000),
('Blender', 8, 350000),
('ActionFigure', 9, 120000),
('CatAkrilik', 10, 30000),
('Coklat', 11, 25000),
('Jus', 12, 10000),
('Perfume', 13, 200000),
('LaptopHP', 1, 7000000),
('Jacket', 2, 200000),
('MotorYamaha', 3, 20000000),
('Powerbank', 1, 200000),
('Sound', 1, 350000),
('Tv', 1, 3000000);

INSERT INTO transaksi (tanggal_transaksi, product_id, quantity, pelanggan_id) VALUES
('2021-03-15', 1, 2, 1),
('2021-06-22', 3, 1, 2),
('2021-09-10', 5, 3, 3),
('2021-11-05', 7, 1, 4),
('2022-02-18', 9, 2, 5),
('2022-05-30', 11, 1, 6),
('2022-08-11', 13, 4, 7),
('2022-10-29', 15, 2, 8),
('2022-01-14', 17, 3, 9),
('2022-04-08', 19, 1, 10),
('2022-07-03', 21, 2, 11),
('2022-12-19', 23, 1, 12),
('2023-02-27', 25, 3, 13),
('2023-04-14', 27, 1, 14),
('2023-06-09', 29, 2, 15),
('2021-01-05', 2, 2, 1),
('2021-04-10', 4, 1, 2),
('2021-07-22', 6, 3, 3),
('2021-10-15', 8, 1, 4),
('2022-01-28', 10, 2, 5);
