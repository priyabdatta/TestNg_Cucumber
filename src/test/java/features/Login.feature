Feature: This feature would be used to design the login page of the application

  Background: Open the application
    Given I have open the application in the browse
@Sanity
  Scenario: Validate the Succeessful login
    When I clicked on the login link
    And I enter Username
    And I enter password
    And I click on login button
    Then I should be landed on the home page
@Regression @Sanity
  Scenario: Validate the Succeessful login using test data
    When I clicked on the login link
    And I enter Username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on login button
    Then I should be landed on the home page
@Regression @Rapid
  Scenario Outline: Validate the Succeessful login using multiple test data
    When I clicked on the login link
    And I enter Username "<UserName>"
    And I enter password "<Password>"
    And I click on login button
    Then I should be landed on the home page

    Examples: 
      | UserName      | Password |
      | abc@xyz.com   | Pqr@1234 |
      | Priya@abc.com | Pqr@1234 |

  Scenario: Validate the Negative login using test data
    When I clicked on the login link
    And I enter Username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on login button
    Then I should get the error message as "The email or password you have entered is invalid."
