Feature: Users list

  Scenario: Get users list
    Given url 'https://gorest.co.in/public-api/users'
    And header Authorization = 'Bearer ' + 'iQeV_nqYxYWzuUrIs-HQZC33dyidA9N-p3eB'
    When method GET
    Then status 200
