{% macro clone_table_owner() %}
    {% set query -%}
        CALL clone_table_owner(
            'FIRST_MODEL' ,'FIRST_MODEL_v1');
        commit;
    {%- endset %}

    {% do run_query(query) %}
{% endmacro %}