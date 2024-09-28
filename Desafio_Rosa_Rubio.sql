--crea base de datos
CREATE DATABASE peliculas;

--se conecta a base de datos
\c peliculas;

--crea tabla peliculas
CREATE TABLE peliculas (
    id SERIAL PRIMARY KEY,
    pelicula VARCHAR(255) NOT NULL,
    anio_estreno INT,
    director VARCHAR(255)
);

--crea tabla reparto
CREATE TABLE reparto (
    id SERIAL PRIMARY KEY,
    id_pelicula INT REFERENCES peliculas(id),
    actor VARCHAR(255)
);

--copia desde archivo peliculas.csv
\copy peliculas(id, pelicula, anio_estreno, director) FROM 'C:/Users/pauli/Apoyo_desafio/peliculas.csv' DELIMITER ',' CSV HEADER;

--copia desde archivo reparto.csv
\copy reparto(id_pelicula, actor) FROM 'C:/Users/pauli/Apoyo_desafio/reparto.csv' DELIMITER ',' CSV HEADER;


--Obtener el ID de la película “Titanic”.
SELECT id FROM peliculas WHERE pelicula = 'Titanic';


--Listar a todos los actores que aparecen en la película "Titanic"
SELECT r.actor 
FROM reparto r
JOIN peliculas p ON r.id_pelicula = p.id
WHERE p.pelicula = 'Titanic';


--Consultar en cuántas películas del top 100 participa Harrison Ford.
SELECT COUNT(DISTINCT p.pelicula)
FROM reparto r
JOIN peliculas p ON r.id_pelicula = p.id
WHERE r.actor = 'Harrison Ford';


--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.
SELECT pelicula, anio_estreno
FROM peliculas
WHERE anio_estreno BETWEEN 1990 AND 1999
ORDER BY pelicula ASC;


--muestra los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo
FROM peliculas;

--Consultar cual es la longitud más grande entre todos los títulos de las películas
SELECT MAX(LENGTH(pelicula)) AS longitud_maxima
FROM peliculas;