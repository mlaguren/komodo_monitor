Feature:
  In order to update the staytus board,
  I need a functioning http client,
  so that I can make http request with updates

  Scenario:  As an http client, I would like to configuration managed in a properties file
    Given I have my staytus board credentials in a properties file
    When I execute the client
    Then I am able to connect to the staytus board

  Scenario:  As an http client, I would like to throw an error if a properties file is no present
    Given I do not have a properties file
    When I execute the client
    Then I receive an error message in the log fie

  Scenario:  As an http client, I would like to throw 401 error if I do not have valid credentials
    Given I do not have a valid api key in the properties file
    When I execute the client
    Then I receive an unauthorized message in the log file