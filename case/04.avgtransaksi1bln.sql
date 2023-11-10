SELECT
    YEAR(tanggal_transaksi) AS Tahun,
    MONTH(tanggal_transaksi) AS Bulan,
    AVG(nominal_transaksi) AS Rata_Rata_Nominal_Transaksi
FROM
    transaksi
WHERE
    tanggal_transaksi BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
GROUP BY
    YEAR(tanggal_transaksi), MONTH(tanggal_transaksi);