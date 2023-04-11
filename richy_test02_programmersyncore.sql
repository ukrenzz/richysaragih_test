-- Question 1
SELECT * FROM mst_member AS member 
  INNER JOIN mst_provinsi AS provinsi 
  ON member.id_provinsi=provinsi.kode_propinsi 
  INNER JOIN mst_kabupaten AS kabupaten
  ON member.id_kabupaten=kabupaten.kode_kabupaten
  INNER JOIN mst_kecamatan AS kecamatan
  ON member.id_kecamatan=kecamatan.kode_kecamatan
  INNER JOIN mst_instansi AS instansi
  ON member.kode_instansi=instansi.kode_instansi
  WHERE kabupaten.nama_kabupaten="PIDIE"

-- Question 2
SELECT * FROM mst_provinsi as provinsi
  LEFT JOIN mst_member as member
  ON member.id_provinsi = provinsi.kode_propinsi
  WHERE member.id_provinsi IS NULL

-- Question 3
SELECT * FROM mst_kabupaten as kabupaten
  LEFT JOIN mst_member as member
  ON member.id_kabupaten = kabupaten.kode_kabupaten
  WHERE member.id_kabupaten IS NULL

-- Question 4
SELECT * FROM mst_kecamatan as kecamatan
  LEFT JOIN mst_member as member
  ON member.id_kecamatan = kecamatan.kode_kabupaten
  WHERE member.id_kecamatan IS NULL

-- Question 5
SELECT member.nama FROM mst_kabupaten as kabupaten
  LEFT JOIN mst_member as member
  ON member.id_kabupaten = kabupaten.kode_kabupaten
  WHERE kabupaten.nama_kabupaten = "Kab. Simalungun"

-- Question 6
SELECT DISTINCT nama_kabupaten, COUNT(instansi.kode_instansi) FROM mst_kabupaten as kabupaten
  LEFT JOIN mst_instansi as instansi
  ON kabupaten.kode_kabupaten = instansi.kode_kabupaten
  WHERE kabupaten.nama_kabupaten = "Kab. Bireuen"
  OR kabupaten.nama_kabupaten = "Kab. Bener Meriah"

  -- Question 7
SELECT * FROM mst_member AS member 
  INNER JOIN mst_provinsi AS provinsi 
  ON member.id_provinsi=provinsi.kode_propinsi 
  INNER JOIN mst_kabupaten AS kabupaten
  ON member.id_kabupaten=kabupaten.kode_kabupaten
  INNER JOIN mst_kecamatan AS kecamatan
  ON member.id_kecamatan=kecamatan.kode_kecamatan
  INNER JOIN mst_instansi AS instansi
  ON member.kode_instansi=instansi.kode_instansi
  WHERE member.nama LIKE "%m"

    -- Question 8
SELECT * FROM mst_member AS member 
  INNER JOIN mst_provinsi AS provinsi 
  ON member.id_provinsi=provinsi.kode_propinsi 
  INNER JOIN mst_kabupaten AS kabupaten
  ON member.id_kabupaten=kabupaten.kode_kabupaten
  INNER JOIN mst_kecamatan AS kecamatan
  ON member.id_kecamatan=kecamatan.kode_kecamatan
  INNER JOIN mst_instansi AS instansi
  ON member.kode_instansi=instansi.kode_instansi
  WHERE member.email LIKE "%no%" 
  AND nama_propinsi = "Sumatera Utara"


  -- Question 9
SELECT * FROM mst_member AS member 
  INNER JOIN mst_provinsi AS provinsi 
  ON member.id_provinsi=provinsi.kode_propinsi 
  INNER JOIN mst_kabupaten AS kabupaten
  ON member.id_kabupaten=kabupaten.kode_kabupaten
  INNER JOIN mst_kecamatan AS kecamatan
  ON member.id_kecamatan=kecamatan.kode_kecamatan
  INNER JOIN mst_instansi AS instansi
  ON member.kode_instansi=instansi.kode_instansi
  WHERE instansi.kode_instansi LIKE "%2004%" 

  -- Question 10
SELECT * FROM mst_member AS member 
  INNER JOIN mst_provinsi AS provinsi 
  ON member.id_provinsi=provinsi.kode_propinsi 
  INNER JOIN mst_kabupaten AS kabupaten
  ON member.id_kabupaten=kabupaten.kode_kabupaten
  INNER JOIN mst_kecamatan AS kecamatan
  ON member.id_kecamatan=kecamatan.kode_kecamatan
  INNER JOIN mst_instansi AS instansi
  ON member.kode_instansi=instansi.kode_instansi
  WHERE kecamatan.kode_kecamatan LIKE "%.08.%" 
