SHOW DATABASES;
USE ecommerce;
SHOW TABLES;
SELECT * FROM prodotto;
SELECT * FROM cliente;
SELECT * FROM ordini;

#preparazione dei dati: unire le tabelle
SELECT cliente.id AS id_cliente, cliente.email, prodotto.nome, prodotto.prezzo, ordini.data
FROM ordini
JOIN cliente ON ordini.id_cliente = cliente.id
JOIN prodotto ON ordini.id_prodotto = prodotto.id;

#analisi dei dati: calcolo della spesa totale per ogni cliente
SELECT ordini.id_cliente, cliente.email, SUM(prodotto.prezzo) AS totale_spesa
FROM ordini
JOIN prodotto ON ordini.id_prodotto = prodotto.id
JOIN cliente ON ordini.id_cliente = cliente.id
GROUP BY ordini.id_cliente, cliente.email
ORDER BY totale_spesa DESC;

# analisi prodotti: determinazione dei best-seller in base al fatturato totale
SELECT prodotto.nome, SUM(prodotto.prezzo) AS fatturato_totale
FROM ordini
JOIN prodotto ON ordini.id_prodotto = prodotto.id
GROUP BY prodotto.nome
ORDER BY fatturato_totale DESC;

#analisi temporale: calcolo del fatturato totale per giorno della settimana
SELECT DAYNAME(ordini.data) AS giorno_settimana, AVG(prodotto.prezzo) AS fatturato_medio
FROM ordini
JOIN prodotto ON ordini.id_prodotto = prodotto.id
GROUP BY giorno_settimana
ORDER BY fatturato_medio DESC;

# analisi degli ordini: numero medio di prodotti per ordine
SELECT AVG(num_prodotti) AS media_prodotti_per_ordine
FROM (
      SELECT COUNT(ordini.id_prodotto) AS num_prodotti
      FROM ordini
      GROUP BY ordini.id_cliente, ordini.data
      ) AS subquery;
     
  
  
      
