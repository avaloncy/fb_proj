{% extends "base.html" %}
{% load django_markdown %}

{% block blog_entries %}
{% for object in object_list %}
  <div class="post">
    <h2><a href="{% url "entry_detail" slug=object.slug %}">{{ object.title }}</a></h2>
    <p class="meta">
      {{ object.created }} |
      Tagged under {{ object.tag.all|join:", " }}
    </p>
    {{ object.body|markdown }}
  </div>
{% endfor %}
{% endblock %}
