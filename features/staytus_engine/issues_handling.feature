Feature:
  In order to manage issues,
  I would like the staytus engine to be ephemeral
  so that I do not need a database

  Scenario: As the engine, I would like to get open issues
    Given I call the http client
    When I receive the json response for issues
    Then I want to parse out open issues

