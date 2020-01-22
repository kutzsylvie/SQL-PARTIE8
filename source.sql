EXO1
 --Afficher tous les frameworks associés à leurs langages.
Si un langage n'a pas de framework l'afficher aussi.
SELECT * FROM `frameworks`
 RIGHT JOIN `languages`
 ON `frameworks`.`languagesId` = `languages`.id;

EXO2
 --Afficher tous les frameworks associés à leurs langages.
  Si un langage n'a pas de framework ne pas l'afficher.
SELECT * FROM `frameworks`
LEFT JOIN `languages`
 ON `frameworks`.`languagesId` = `languages`.id;

EXO3
  --Afficher le nombre de framework qu'a un langage.--
SELECT `languages`.name,
COUNT(`frameworks`.languagesid) FROM `languages`
LEFT JOIN `frameworks` ON `languages`.id = `frameworks`.languagesId
GROUP BY `languages`.id;

EXO4
--Afficher les langages ayant plus de 3 frameworks.

SELECT `languages`.name,
COUNT(`frameworks`.languagesid) FROM `languages`
LEFT JOIN `frameworks` ON `languages`.id = `frameworks`.languagesId
GROUP BY `languages`.id
HAVING COUNT(`frameworks`.languagesId) > 3;
