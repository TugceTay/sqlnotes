CREATE OR REPLACE FUNCTION mahalle_area() RETURNS void AS $$
DECLARE
    mahalle_kaydi RECORD;
BEGIN
    FOR mahalle_kaydi IN SELECT id, ad, geom FROM mahalle LOOP
        RAISE NOTICE 'ID: %, Isim: %, Alan: %', 
            mahalle_kaydi.id, 
            mahalle_kaydi.ad, 
            ST_Area(mahalle_kaydi.geom);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT mahalle_area();