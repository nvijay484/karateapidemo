Feature: testemployee

 Scenario: validate employee response
    Given url 'https://api-testing-jkbo.onrender.com/employees/allemployees'
    Given header Content-Type = 'application/json'
    And retry until responseStatus == 200
    When method get
    Then status 200
    * def res =  response
    And match res[*].city == '#ignore'
    And match res[*].email == '#present'
    And match res[4].city != '#present'
    And match res[1].email == '#string' && '#present'
    And match res[4].phone == '#number'
    And match res[4].city == '##string'
    # And match res[4].__v == '#string'
    #And match res[4]._id == '#uuid'
    And match res == '#array'
    And match res[0] == '#object'
   # And match response[*] == karate.forEach { _id== '#string', name== '#string', phone== '#number', city== '##string', __v== '#number', email== '#string', role== '#string' }

@xl
Scenario: validate employee responses
    Given url 'https://api-testing-jkbo.onrender.com/employees/allemployees'
    And header Content-Type = 'application/json'
    And retry until responseStatus == 200
    When method get
    Then status 200
    * def res = response
    * def schema = { _id: '#string', name: '#string', phone: '#number', city: '##string', __v: '#number', email: '#string', role: '#string' }
    * def validate = function(x) { karate.match(x, schema).pass }
    * karate.forEach(res, validate)
