Feature: print demo text

  Scenario: variable printing
    Given def myVar = 'welcome to karate world'
    Then print myVar

  Scenario: printing
    * def myVar = 'welcome to Cucumber'
    * print myVar
    Given def color = 'red '
    And def num = 5
    Then assert color + num == 'red 5'
    * def myJson = { foo: 'bar', baz: [1, 2, 3] }
    * print  myJson
    * def cat = { name: 'Billie', scores: [2, 5] }
    * assert cat.scores[1] == 5
    * assert cat.name == 'Billie'
    * def cats = [{ name: 'Billie', breed: 'Native' }, { name: 'Bob',name: 'bill', name: 'test',  breed: 'Native' }]
    * match cats[1] == { name: 'Bob', breed: 'Native' }
    * match cats[1].name[0] == 'Bob'

  Scenario: embedded
    Given def user = { name: 'john', age: 21 }
    And def lang = 'en'
    When def session = { name: '#(user.name)', locale: '#(lang)', sessionUser: '#(user)'  }
    * print session
   
   Scenario: data tables   
   * table cats
  | name   | age |
  | 'Bob'  | 2   |
  | 'Wild' | 4   |
  | 'Nyan' | 3   |
* print cats[1].name  
 * match cats == [{name: 'Bob', age: 2}, {name: 'Wild', age: 4}, {name: 'Nyan', age: 3}]
 Then set cats[2].name = 'test'
 * print cats 
 
    