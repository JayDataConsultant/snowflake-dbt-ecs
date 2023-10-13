{% snapshot scd_emp %}
{{
 config(
 target_schema='dev',
 unique_key='emp_no',
 strategy='timestamp',
 updated_at='updated_at',
 invalidate_hard_deletes=True
 )
}}
select * FROM {{ source('airbnb', 'emp') }}
{% endsnapshot %}