{% macro get_season(column_name) %}
    CASE 
        WHEN MONTH(TO_TIMESTAMP({{ column_name }})) IN (12, 1, 2) THEN 'WINTER'
        WHEN MONTH(TO_TIMESTAMP({{ column_name }})) IN (3, 4, 5) THEN 'SPRING'
        WHEN MONTH(TO_TIMESTAMP({{ column_name }})) IN (6, 7, 8) THEN 'SUMMER'
        ELSE 'AUTUMN' 
    END
{% endmacro %}