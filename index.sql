--index: bounding box içinde neler var (bu yüzden yaklaşık sonuçlar sağlar )

--İstatistikleri güncellemek için  toplu veri yükleme ve silme işlemlerinden sonra:
ANALYZE nyc_census_blocks;

-- Büyük bir toplu güncelleme yapıldığında, VACUUM manuel olarak çalıştırılmalı (kullanılmayan alanları kaldırmak için)
VACUUM ANALYZE nyc_census_blocks;

--VACUUM komutunun verilmesi veritabanı istatistiklerini güncellemeyecektir, aynı şekilde ANALYZE komutunun verilmesi de kullanılmayan tablo satırlarını kaldırmaz

--bazı fonksiyonlar index içermez onlarda && ( Index-Only) kullan

/*
&&  bbox lar kesişiyor mu
<-> arasındaki mesafe 
<#> bbox lar arasındaki mesafe
|=| en yakın noktaları arasındaki mesafe
*/

create index mahalle_geom on mahalle using gist(geom); -- GIST

create index mahalle_nufus on mahalle (nufus); -- B-Tree

explain analyze select * from mahalle where nufus= 5323;