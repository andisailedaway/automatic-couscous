{{ config(materialized='incremental', unique_key = 'd_date', schema = 'second_schema') }}

SELECT d_date, d_date_id, count(*) as count_of_days
From {{ source('sample','date_dim') }}
where d_date <= current_date

{% if target.name == 'dev' %}
and year(d_date) = 2020
{% endif%}
{{group_by(2)}}

{% if is_incremental() %}
and d_date >= (select max(d_date) from {{ this }} )
{% endif %}

-- Ideally used with updated_at/created_at fields. 