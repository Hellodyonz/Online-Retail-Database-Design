SELECT * FROM pelanggan;
SELECT * FROM pelanggan WHERE id>5;
SELECT nama,alamat FROM pelanggan;

SELECT * FROM kategori_product;
SELECT * FROM kategori_product WHERE id>9 LIMIT 2;

SELECT * FROM products;
SELECT nama_product,harga FROM products WHERE harga>50000;

SELECT * FROM transaksi;
SELECT tanggal_transaksi FROM transaksi WHERE quantity >2;