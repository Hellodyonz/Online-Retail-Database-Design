SELECT
    kp.nama_kategori AS Nama_Kategori,
    COUNT(p.id) AS Jumlah_Barang
FROM
    kategori_product kp
JOIN
    products p ON kp.id = p.kategori_id
GROUP BY
    kp.id
ORDER BY
    Jumlah_Barang DESC
LIMIT 1;