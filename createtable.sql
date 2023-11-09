CREATE TABLE pelanggan(
	id int(3) PRIMARY KEY auto_increment NOT NULL,
	nama VARCHAR(25) NOT NULL,
	nomor_telepon VARCHAR(15) NOT NULL,
	alamat VARCHAR(25) NOT NULL
);

CREATE TABLE kategori_product(
	id int(3) PRIMARY KEY auto_increment NOT NULL,
	nama_kategori VARCHAR(25) NOT NULL
);


CREATE TABLE products(
	id int(3) PRIMARY KEY auto_increment NOT NULL,
	nama_product VARCHAR(25) NOT NULL,
	kategori_id int(3),
	harga int(10) NOT NULL,
	FOREIGN KEY (kategori_id) REFERENCES kategori_product(id)
);

CREATE TABLE transaksi (
    id int(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tanggal_transaksi DATE NOT NULL,
    product_id int(3) NOT NULL,
    quantity int(3) NOT NULL,
    pelanggan_id int(3) NOT NULL,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
