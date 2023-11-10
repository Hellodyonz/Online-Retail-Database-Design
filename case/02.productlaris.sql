SELECT
    nama_product AS Nama_Product,
    COUNT(t.id) AS Jumlah_Pembelian
FROM
    transaksi t
JOIN
    products p ON t.product_id = p.id
GROUP BY
    t.product_id
ORDER BY
    Jumlah_Pembelian DESC
LIMIT 5;