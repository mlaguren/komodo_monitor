Feature:
  In order to maintain supported DSPs,
  I would like the Staytus to maintain DSPs in a properties file,
  so that DSP information is not part of the staytus client code

  Scenario: As a http client, I would like to find DSP information in a DSP config folder
    Given I have Staytus's DSP properties available
    When I make a call to the Staytus client
    Then the http client makes the correct http call

  Scenario:  As a http client, I would like to throw an error in the log file if the DSP cannot be found
    Given I do not a DSP configured for the Staytus client
    When I make a call to the Staytus client
    Then the http client return an error in the log file