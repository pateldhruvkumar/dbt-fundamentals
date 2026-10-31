{%- set apples = ["Gala", "Fuji", "Red Delicious", "Honeycrisp", "Granny Smith", "Pink Lady"] -%}

{% for i in apples %}
    {% if i != "Red Delicious" %} {{ i }} {% else %} i hate {{ i }} {% endif %}
{% endfor %}
