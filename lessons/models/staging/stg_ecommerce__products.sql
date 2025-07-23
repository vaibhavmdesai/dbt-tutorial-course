WITH source AS (
	SELECT *

	FROM {{ source('thelook_ecommerce', 'products') }}
)

SELECT
	-- IDs
	id AS product_id,
	cost,
	retail_price,
	department,
	brand -- new column added in v2
FROM source
