{{ config(materialized='view') }}

select
    Movie_Title as movie_title,
    Release_Date as release_date,
    Wikipedia_URL as wikipedia_url,
    Genre as genre,
    Director__1_ as director_1,
    Director__2_ as director_2,
    Cast__1_ as cast_1,
    Cast__2_ as cast_2,
    Cast__3_ as cast_3,
    Cast__4_ as cast_4,
    Cast__5_ as cast_5,
    Budget as budget,
    Revenue as revenue
from {{ source('movie', 'movie') }}
