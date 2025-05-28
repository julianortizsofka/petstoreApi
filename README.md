# Pruebas API

**Fecha Inicio** : Q2 2025

**Participantes**:


Analista de automatización: Julian Alejandro Ortiz Medina - <julian.ortiz@sofka.com.co>



****

# Integración de casos prueba de la automatización en Azure

## Introducción
Se presenta un prueba de automatización de pruebas de API, por medio de Karate Framework, a la API petstore.



- petstoreApi/
- ├── src/
- │   └── test/
- │       └── java/
- │           └── com/
- │               └── petstore/
- │                   ├── features/
- │                   │   └── user.feature
- │                   └── runners/
- │                       └── TestRunner.java

## Enfoque de integración

La automatización se centra en 5 escenarios
- Crear un usuario
- Buscar el usuario creado
- Actualizar el nombre y el correo del usuario
- Buscar el usuario actualizado
- Eliminar el usuario

## Herramientas y tecnologías

| Herramienta/Tecnología | Descripción                                                                                           | Versión Utilizada |
|------------------------|-------------------------------------------------------------------------------------------------------|-------------------|
| Java                   | Lenguaje de programación para escribir los scripts de prueba debe ser mayor a Java 11.                | 17                |
| Karate Framework       | Framework de código abierto para pruebas automatizadas en Java, para prueba de API.                   | 1.4.1             | 
| Gradle                 | Herramienta de automatización de construcción, utilizada para compilar, probar y desplegar el código. | 8.13              |
| IntelliJ IDEA          | Entorno de desarrollo integrado (IDE) para el desarrollo de software.                                 | Última versión    |

## PASOS PARA LA EJECUCIÓN


### Comando para ejecutar TODOS los escenarios uno por uno
#### ./gradlew test --info

Se recomienda usar el --info, para poder observar el reporter generado por karate.


##  Hallazgos y conclusiones

Se encontró un error recurrente en la aplicación, debido a la demora de la aplicación en la actualización de estados, a veces falla el escenario de "Buscar el usuario actualizado", mientras se actualizan las bases de datos. Para observar que se soluciona se puede correr de nuevo.

La automatización desarrollada con Karate Framework permite verificar de manera eficiente y secuencial las operaciones CRUD (Crear, Leer, Actualizar, Eliminar) de los usuarios en la API de PetStore. Esto asegura que cada etapa del ciclo de vida del usuario, desde su creación inicial hasta su eliminación, funcione correctamente, garantizando la integridad de los datos y la funcionalidad de los endpoints clave.

Karate demuestra ser una herramienta poderosa para la automatización de APIs gracias a su sintaxis intuitiva de Gherkin y su capacidad para manejar solicitudes HTTP y aserciones de manera sencilla.

