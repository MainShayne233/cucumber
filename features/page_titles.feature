Feature: Page title
  Scenario: Users see correct page title for each page
    Given I am on the home page
    Then the title should be "Home"