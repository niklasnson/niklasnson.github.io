---
layout: default
---
<main>
  <h2>Archives</h2>
  <h4>This year's posts</h4>
  {%for post in site.posts %}
  {% unless post.next %}
  <ul class="this">
    {% else %}
    {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
    {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
    {% if year != nyear %}
  </ul>
  <h4>{{ post.date | date: '%Y' }}</h4>
  <ul class="past">
    {% endif %}
    {% endunless %}
    <li><time>{{ post.date | date:"%d %b" }}</time> – <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</main>