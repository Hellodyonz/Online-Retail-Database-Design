ALTER TABLE transaksi
ADD COLUMN nominal_transaksi INT;

UPDATE transaksi
SET nominal_transaksi = quantity * (SELECT harga FROM products WHERE products.id = transaksi.product_id);