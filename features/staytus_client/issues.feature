Feature:
  In order to provide more information,
  I would like to make updates to the issues endpoint,
  so that more data is displayed on the dashboard

  Scenario:  As a http client, I would like to place an issue on the dashboard
    Given I have an issue to post
    When I execute the client
    Then I should see the issue on the dashboard

    Scenario:  As a http client, I would like to handle invalid issue alerts
      Given I have an invalid issue
      When I execute the client
      Then I should see the issue reported in the log