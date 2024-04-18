{{
    config(
        materialized='table'
    )
}}

WITH pse_monthly AS (
    SELECT
        -- Identifiers
        symbol,
        EXTRACT(month FROM date) AS month,
        
        -- Prices
        closing_price,
        high_price,
        low_price,
        opening_price,
        last_price,
        
        -- Volumes
        trading_volume,
        
        -- Price Changes
        price_change,
        price_change_percent
    FROM {{ ref('stg_pse_data') }}
)

SELECT
    symbol,
    month,
    AVG(closing_price) AS avg_closing_price,
    MAX(high_price) AS max_high_price,
    MIN(low_price) AS min_low_price,
    AVG(trading_volume) AS avg_trading_volume,
    AVG(price_change) AS avg_price_change,
    AVG(price_change_percent) AS avg_price_change_percent
FROM pse_monthly
GROUP BY
    symbol,
    month
ORDER BY
    symbol,
    month