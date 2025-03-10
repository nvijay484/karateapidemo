
Feature: logout validation


  Scenario: First logout scenerio
  * print 'first logout scen'

@smoke
  Scenario: second logout scenerio
  * print 'second logout scen'
  
  
  @xl
    Scenario: read data from the excel file
    * def exceldata = read ('/testdata.csv')
    * print exceldata
    * def exceltext = karate.readAsString('/testdata.csv')
    * print exceltext