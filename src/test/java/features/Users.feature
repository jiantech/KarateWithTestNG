Feature: Users list

  Background:
    Given url 'https://gorest.co.in/public-api/users'
    And header Authorization = 'Bearer ' + 'iQeV_nqYxYWzuUrIs-HQZC33dyidA9N-p3eB'

  Scenario: Get users list
    When method GET
    Then status 200
    And match response._meta.message == 'OK. Everything worked as expected.'
    * match response.result[0].id == '7626'

  Scenario Outline: Get user
    And param first_name = <first_name>
    And param gender = <gender>
    When method GET
    Then status 200
    And match response._meta.message == 'OK. Everything worked as expected.'
    * match response.result[0].id == <id>
    Examples:
      |first_name  |gender|id|
      |'Elenora'     |'female'|'11931'|
      |'Mikel'       |'male'  |'7638' |
      |'Sabina'      |'female'|'7641'|



