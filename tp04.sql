a. SELECT * FROM article ORDER BY designation ASC;

b. SELECT * FROM article ORDER BY prix DESC;

c. SELECT * FROM article WHERE designation LIKE 'Boulon%' ORDER BY prix ASC;

d. SELECT * FROM article WHERE designation LIKE '%sachet%';

e. SELECT * FROM article WHERE LOWER(designation) LIKE '%sachet%';

f. SELECT * FROM article INNER JOIN fournisseur ON article.id_fou = fournisseur.id ORDER BY nom ASC, prix DESC;

g. SELECT * FROM article INNER JOIN fournisseur ON article.id_fou = fournisseur.id WHERE id_fou = 3;

h. SELECT AVG(prix),nom FROM article INNER JOIN fournisseur ON article.id_fou = fournisseur.id WHERE id_fou = 3;

i. SELECT AVG(prix),nom FROM article INNER JOIN fournisseur ON article.id_fou = fournisseur.id GROUP BY nom;

j. SELECT * FROM bon WHERE date_cmde BETWEEN '2019/03/01' AND '2019/04/05 12:00';

k. SELECT * FROM bon INNER JOIN compo ON bon.id = compo.id_bon WHERE compo.id_art IN (2, 3, 4, 6);

l. SELECT *,fournisseur.nom FROM bon INNER JOIN fournisseur ON bon.id_fou = fournisseur.id INNER JOIN compo ON bon.id = compo.id_bon WHERE compo.id_art IN (2, 3, 4, 6);

m. SELECT bon.date_cmde, SUM(article.prix) FROM bon INNER JOIN compo ON bon.id = compo.id_bon INNER JOIN article ON compo.id_art = article.id GROUP BY bon.date_cmde;

n.SELECT bon.date_cmde, SUM(compo.qte) FROM bon INNER JOIN compo ON bon.id = compo.id_bon GROUP BY bon.date_cmde;

o.SELECT bon.numero, SUM(compo.qte) FROM bon INNER JOIN compo ON bon.id = compo.id_bon GROUP BY bon.numero
HAVING SUM(compo.qte) > 25;

p. SELECT SUM(article.prix), date_cmde FROM article INNER JOIN compo ON article.id = compo.id_art
INNER JOIN bon ON compo.id_bon = bon.id WHERE date_cmde BETWEEN '2019/04/01' AND '2019/04/30'
GROUP BY date_cmde;
