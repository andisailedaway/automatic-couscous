{% macro rename_segments(column_name) %}
    case
        when {{column_name}} in ('Dr.')
            then 'doctor'
        else 'non-doctor'
    end
{% endmacro %}