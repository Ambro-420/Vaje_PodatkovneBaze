--povprečno oceno filmov iz leta 2000, zaokroženo na 1 decimalko.
--SELECT ROUND(SUM(ocena)/COUNT(naslov), 1 ) AS povprecna_ocena FROM filmi
--WHERE leto = 2000

--število filmov in povprečno oceno filmov vsakega režiserja
--SELECT reziser, COUNT(naslov) AS stevilo, SUM(ocena)/COUNT(naslov) AS povprecna_ocena 
--FROM filmi
--GROUP BY reziser
--ORDER BY povprecna_ocena DESC

--Vrnite certifikate, ki se pojavijo pri vsaj 100 filmih. (pozor: nekateri filmi nimajo oznake)
--SELECT certifikat, naslov FROM filmi
--GROUP BY certifikat
--HAVING COUNT(naslov) >= 100 AND certifikat IS NOT NULL

--Vrnite naslove in ocene filmov istega režiserja kot 'The Good, the Bad and the Ugly'
--SELECT naslov, ocena FROM filmi
--WHERE reziser = (SELECT reziser FROM filmi
--        WHERE naslov = 'The Good, the Bad and the Ugly')

--Vrnite najbolje ocenjene filme z oznako 'R' vsakega režiserja. Rezultat naj bo urejen po oceni najboljšega filma.
--SELECT reziser, naslov,ocena FROM filmi
--WHERE certifikat = 'R'
--GROUP BY reziser 
--HAVING ocena = MAX(ocena)
--ORDER BY ocena DESC
