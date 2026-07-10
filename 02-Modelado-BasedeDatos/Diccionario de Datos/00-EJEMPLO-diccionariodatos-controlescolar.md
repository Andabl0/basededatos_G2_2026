# Diccionario de Datos de la Base de Datos Control Escolar

1. Informacion General

| Elemento | Valor |
| :--- | :--- |
| Proyecto | Control Escolar |
| Versión | 1.0 |
| Fecha | Junio 2026 |
| Elaboro | Ing. Irving Josue Andablo Islas |
| SGDB | SQLSERVER |

2. Descripción de la Base de Datos

El Base de Datos administra:

- Carreras 
- Alumno
- Profesor
- Materia
- Grupo
- Inscripcion

Permite controlar la oferta academica y la inscripcion de estudiantes

3. Catalogo de Restricciones Utilizadas 

| Catalago | Significado  |
| :--- | :--- |
| PK | Primary Key |
| FK | Foreing Key |
| NN | Not Null |
| UQ | Unique |
| AI | Autoincrement o Identity |
| CK | Check |
| DF | Default |
    
4. Diccionario de Datos

**Tabla:** _Carrera_

Almacena las carreras ofertadas por la universidad

| Campo | Tipo | Longitud | Restriccion | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| id_carrera | INT | - | PK, AI, NN | Identificador unico de la carrera |
| nombre | VARCHAR | 100 | UQ, NN | Nombre de la carera |
| duracion_cuatrimestre| INT | - | NN, CK (>0) | Duracion en cuatrimestre |

---

**Tabla:** _Alumno_

Almacena la Información de los estudiantes

| Campo | Tipo | Longitud | Restriccion | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| id_alumno | INT | - | PK, AI, NN | Identificador del alumno |
| matricula | INT | 10 | UQ, NN | Matricula Institucional |
| nombre | VARCHAR | 50 | NN | Nombre del Alumno |
| apellido_materno | VARCHAR | 50 | NN | Apellido Materno |
| apellido_paterno | VARCHAR | 50 | NN | Apellido Paterno |
| correo | VARCHAR | 100 | UQ, NN | Correo Institucional |
| fecha_nacimiento | DATE | - | NN | Fecha Nacimiento  |
| id_carrera | INT | - | FK, NN | Carrera a la que pertenece |
---
TODO: Documentar las siguientes tablas 

5. Relaciones en la Base de Datos

| Relacion | Cardinalidad | Descripcion |
| :--- | :--- | :--- |
| Carrera -> Alumno | 1:N | Una carrera tiene muchos alumnos |
| Carrera -> Materia | 1:N | Una carrera tiene muchas materias |
| Profesor -> Grupo | 1:N | Un porfesor puede impartir en varios grupos |
| Materia -> Grupo | 1:N | Una materia puede abrise en varios grupos |
| Alumno -> Inscripcion | 1:N | Una alumno puede tener varias inscripciones |
| Grupo -> Inscripcion | 1:N | Un grupo puede tener muchas alumnos |

6. Matriz de Claves Foraneas

| Tabla | Campo FK | Referencia | 
| :--- | :--- | :--- | 
| Alumno | id_carrera | Carrera(id_carrera) | 
| Materia  | id_carrera | Carrera(id_carrera) | 
| Grupo  | id_profesor | Profesor(id_profesor) | 
| Grupo  | id_materia | Materia(id_materia) | 
| Inscripcion  | id_alumno | Alumno(id_alumno) |
| Inscripcion  | id_grupo | Grupo(id_grupo) |

7. Integridad Referencial

| Clave | Regla |
| :--- | :--- |
| IR-01 | No se puede registrar un alumno con una carrera inexistente |
| IR-02 | No se puede crear un grupo para una materia inexistente |
| IR-03 | No se puede crear un grupo para un profesor inexistente |

8. Reglas del ngocio

| Clave | Regla |
| :--- | :--- |
| RN-01 | Un alumno pertenece a una sola carrera |
| RN-02 | Una carrera puede tener muchos alumnos |
| RN-03 | Una carrera puede tener muchas materias |
| RN-04 | Un profesor puede impartir varios grupos |
