-- film name, category, language

SELECT
    f.title, c.name, l.name
-- variables can be used by using the <tablename> and the <varname> after a space
FROM
    film f, language, film_category fc, category c
WHERE
    f.film_id = fc.film_id 
    AND 
    f.language_id = l.language_id
    AND
    fc.category_id = c.category_id
;
