{{
    config(
        materialized='view'
    )
}}

WITH pse_cleaned AS (
    SELECT
        -- Adds a unique identifier column
        ROW_NUMBER() OVER (ORDER BY symbol, date) AS trade_id,

        -- Identifiers
        CAST(symbol AS STRING) AS symbol,
        CAST(date AS TIMESTAMP) AS date,
        CAST(week_number AS INTEGER) AS week_number,
        CAST(weekday_num AS INTEGER) AS weekday_num,

        -- Prices
        CAST(closing_price AS FLOAT64) AS closing_price,
        CAST(high_price AS FLOAT64) AS high_price,
        CAST(low_price AS FLOAT64) AS low_price,
        CAST(opening_price AS FLOAT64) AS opening_price,
        CAST(last_price AS FLOAT64) AS last_price,

        -- Volumes
        CAST(trading_volume AS FLOAT64) AS trading_volume,

        -- Price Changes
        CAST(price_change AS FLOAT64) AS price_change,
        CAST(price_change_percent AS FLOAT64) AS price_change_percent
    FROM {{ source('staging', 'pse_analysis') }}
)

SELECT * FROM pse_cleaned

-- dbt build --select <model_name> --vars '{'is_test_run': 'false'}'
{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}