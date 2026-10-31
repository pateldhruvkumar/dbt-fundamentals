WITH returns_info AS
(
    SELECT
        sales_id,
        store_sk,
        product_sk,
        returned_qty,
        return_reason,
        refund_amount
    FROM
        {{ ref('bronze_returns') }}
),

products AS
(
    SELECT
        product_sk,
        product_name,
        department
    FROM
        {{ ref('bronze_product') }}
),

stores AS
(
    SELECT
        store_sk,
        store_name
    FROM
        {{ ref('bronze_store') }}
),

joined_query AS
(
    SELECT
    stores.store_sk,
    stores.store_name,
    returns_info.refund_amount
FROM
    returns_info
JOIN
    stores ON returns_info.store_sk = stores.store_sk
)

SELECT
    store_name,
    SUM(refund_amount) AS store_total_refunded_amount
FROM 
    joined_query
GROUP BY
    store_name 