Feature: Login to linkedin
  Scenario: Login
    Given User is on linkedin login
    When User enters email and password
    And Clicks submit button
    Then User should be logged in with correct details
