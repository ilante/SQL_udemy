-- film name, category, language
SELECT
    film.title, category.name, language.name
FROM
    film, language, film_category, category
WHERE
    film.film_id = film_category.film_id
    AND
    film.language_id = language.language_id
    AND
    film_category.category_id = category.category_id
;
