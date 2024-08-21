{% set film_title = 'Avatar' %}

select *
from {{ref('films')}}
where title = '{{ film_tile }}'