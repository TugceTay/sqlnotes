-- kullanıcı tanımlı fonksiyon
-- farkı ilgili işlem gerçekleştiğinde kendiliğinden tetiklenir
-- değişken almaz

drop trigger [if exists] mahalle_sil_trigger on mahalle [ cascade | restrict ];

alter table mahalle disable trigger mahalle_sil_trigger| all;

alter table mahalle disable trigger all;

alter table mahalle enable trigger mahalle_sil_trigger| all;