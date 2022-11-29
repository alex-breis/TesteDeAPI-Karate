Feature: Testando API do universo Harry Potter

Background: Executa antes de cada teste
    * def url_base = "https://legacy--api.herokuapp.com/api/v1"

Scenario: Testando se o retorno do nome do livro 3 está correto
    Given url url_base
    And path "/books/3"
    When method get
    Then status 200
    And match $.id == 3
    And match $.title == 'Harry Potter and the Prisoner of Azkaban'

Scenario: Verificando se a busca por personagens retornou um array
    Given url url_base
    And path "/characters"
    When method get
    Then status 200
    And match $ == '#[]'

Scenario: Verificando se a quantidade de livros está correta
    Given url url_base
    And path "/books"
    When method get
    Then status 200
    And match $ == '#[7]'

Scenario: Testando o nome do fundador dentro do array
    Given url url_base
    And path "/houses/2"
    When method get
    Then status 200
    And match $.heads[2].name == 'Salazar Slytherin'

Scenario: Tentador acessar uma página inexistente
    Given url url_base
    And path "/species?page=0"
    When method get
    Then status 500

Scenario: Tentandor obter os dados de um personagem inexistente
    Given url url_base
    And path "/characters/1000"
    When method get
    Then status 404
    And match $.error == "Couldn't find Character with 'id'=1000"