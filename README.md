# DEFINICION DE TABLAS
## Descripción
Este desafío consiste en cargar los archivos películas y reparto a PostgreSQL y realizar varias consultas SQL sobre los datos cargados. 
Este documento describe los pasos necesarios para realizar la carga de archivos CSV y ejecutar consultas en PostgreSQL utilizando la terminal psql.

## Contenido
### El archivo incluye lOs siguientes ARCHIVOS:
1. **Peliculas.csv**: Contiene la información sobre las películas (ID, título, año de estreno, director).
2. **Reparto.csv**: Contiene el reparto de las películas (ID de película, actor).

## Requisitos
1. PostgreSQL.
2. Acceso a los archivos peliculas.csv y reparto.csv.

## Instrucciones de Ejecución   
**Paso 1**: Crear la base de datos y conectarse a ella.
![00](https://github.com/user-attachments/assets/f7028508-e144-4d01-a0f1-b7851c523a40)

**Paso 2**: Crear las tablas
![01](https://github.com/user-attachments/assets/f0548e20-5c2c-4d52-8cfc-0f6a988a5987)

![02](https://github.com/user-attachments/assets/2615388d-370e-4866-85c6-d480b14c2774)

**Paso 3**: Cargar los datos CSV
![03](https://github.com/user-attachments/assets/d67b40e7-618d-4674-9cd9-5875cb1a20b4)

![04](https://github.com/user-attachments/assets/76ce9412-6231-4bc7-952a-ea6d57c68086)

**Paso 4**: Consultas solicitadas
1. Obtener el ID de la película "Titanic"
   ![05](https://github.com/user-attachments/assets/8a1e65f1-f572-4501-99bf-7117165967cc)

2. Listar a todos los actores que aparecen en la película "Titanic"
   ![063](https://github.com/user-attachments/assets/7bc9894d-52b7-4daf-9c9c-6c8969084a95)

3. Consultar en cuántas películas del top 100 participa Harrison Ford
   ![07](https://github.com/user-attachments/assets/9baebc77-3db6-4ff4-a19f-59eed87afef6)

4. Películas estrenadas entre los años 1990 y 1999, ordenadas por título ascendente
   ![08](https://github.com/user-attachments/assets/662e591f-26a3-41fd-b09d-be3a5f45157d)

5. Mostrar los títulos con su longitud (nombre como longitud_titulo)
   ![09](https://github.com/user-attachments/assets/79e493fd-b445-4d99-9cc8-b6890210f52c)

    
6. Consultar la longitud más grande entre todos los títulos de las películas
   ![10](https://github.com/user-attachments/assets/bac79576-b8f7-4f0c-8d25-8e67d0c1c6ea)
 
### Autor

- [Rosa Rubio](https://github.com/PaulinaRubioP)
