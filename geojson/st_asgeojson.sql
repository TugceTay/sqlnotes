
-- geojson çıktı alma

SELECT jsonb_build_object(
'type',
' FeatureCollection',
' features', jsonb_agg (feature)
	)
FROM (
SELECT jsonb_build_object(
'type','Feature',
'id', id,
'geometry',ST_AsGeoJSON (geom):: jsonb,
'properties', to_jsonb (row)- 'id' - 'geom'
) AS feature
FROM (SELECT * FROM mahalle)
row)
features;