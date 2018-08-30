Feature:
  In order to update the Staytus board,
  I would like to the Staytus client to support the set_status endpoint,
  So that I can update the Staytus dashboard

  Scenario:  As a http client, I would like to send a valid status to the set_service endpoint
    Given I have an alert to send to the Staytus board
    When I make a call to the http client
    Then the Staytus board gets updated

  Scenario: As a http client, I would like to handle invalid statuses
    Given I have an invalid alert
    When I make a call to the http client
    Then the Staytus log file contains the error message