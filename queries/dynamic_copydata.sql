-- Query for copy_data op inside for_each op
SELECT * FROM @{item().TABLE_SCHEMA}.@{item().TABLE_NAME}
