--Vrnite naslove filmov in imena glavnih igralcev. Rezultate uredite po imenu igralca in nato še po naslovu filma.
--SELECT naslov, oseba.ime FROM film 
--JOIN vloga ON film.id = vloga.film 
--JOIN oseba ON vloga.oseba = oseba.id
--WHERE vloga.tip = 'I'
--ORDER BY oseba.ime, naslov


--Za vsakega režiserja (izpišite ga z IDjem in imenom) izpišite skupno dolžino filmov, ki jih je režiral (brez igranja). Rezultate uredite po imenu režiserja.
--SELECT oseba.id, oseba.ime, SUM(film.dolzina) AS 'celotna dolzina' FROM film
--JOIN vloga ON film.id = vloga.film 
--JOIN oseba ON vloga.oseba = oseba.id
--WHERE vloga.tip = 'R'
--GROUP BY oseba.ime
--ORDER BY oseba.ime

--Za vsak žanr (izpišite ga z imenom) izpišite število različnih igralcev in število različnih režiserjev, ki so sodelovali pri filmih tega žanra. 
--Rezultate uredite padajoče po vsoti števila igralcev in števila režiserjev (če se nekdo pojavi tako kot igralec kot režiser, se tukaj šteje dvakrat).
--SELECT zanr.naziv, 
--COUNT(CASE WHEN vloga.tip = 'I' THEN 1 END) AS 'stevlo igralcev',
--COUNT(CASE WHEN vloga.tip = 'R' THEN 1 END) AS 'stevlo reziserjev'
--FROM film
--JOIN pripada ON film.id = pripada.film 
--JOIN vloga ON film.id = vloga.film
--JOIN zanr ON pripada.zanr = zanr.id
--GROUP BY zanr.naziv
--ORDER BY 'stevlo igralcev', 'stevlo reziserjev'