Feature: User Management in PetStore API

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def userId = '10000001'
    * def username = 'pepito.pets'
    * def firstName = 'Pepito'
    * def lastName = 'Perez'
    * def email = 'pepito.pets@gmoil.com'
    * def password = 'password123'
    * def phone = '1234567890'
    * def userStatus = 12
    * def updatedFirstName = 'Carla'
    * def updatedEmail = 'Carla_updated@pets@gmoil.com'


  Scenario: Crear un usuario
    Given path '/user'
    And request { "id": #(userId), "username": #(username), "firstName": #(firstName), "lastName": #(lastName), "email": #(email), "password": #(password), "phone": #(phone), "userStatus": #(userStatus) }
    When method POST
    Then status 200
    And match response.type == 'unknown'
    And match response.message == userId + ''
    * print 'Usuario creado: ' + response.message
    * def createdUserMessage = response.message

  Scenario: Buscar el usuario creado
    Given path '/user/', username
    When method GET
    Then status 200
    And match response.username == username
    And match response.email == email
    And match response.firstName == firstName
    * print 'Usuario encontrado: ' + response.username

  Scenario: Actualizar el nombre y el correo del usuario

    Given path '/user/', username
    And request { "id": #(userId), "username": #(username), "firstName": #(updatedFirstName), "lastName": #(lastName), "email": #(updatedEmail), "password": #(password), "phone": #(phone), "userStatus": #(userStatus) }
    When method PUT
    Then status 200
    And match response.code == 200
    And match response.type == 'unknown'
    And match response.message == userId + ''
    * print 'Usuario actualizado: ' + response.message



  Scenario: Buscar el usuario actualizado
    Given path '/user/', username
    When method GET
    Then status 200
    And match response.username == username
    And match response.email == updatedEmail
    And match response.firstName == updatedFirstName
    * print 'Usuario actualizado encontrado: ' + response.username

  Scenario: Eliminar el usuario
    Given path '/user/', username
    When method DELETE
    Then status 200
    And match response.code == 200
    And match response.type == 'unknown'
    And match response.message == username
    * print 'Usuario eliminado: ' + response.message