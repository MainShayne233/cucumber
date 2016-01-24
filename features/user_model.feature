Feature: User Model works
  Scenario: User should be valid with names and emails
    Given I am an arbitrary user
    Then I should be invalid
    Then I have a proper name assigned to me
    Then I should be invalid
    And I have a proper email assigned to me
    Then I should be valid
    And I should have a name
    And I should have a email
    
  Scenario: Users shouldn't have params that are too long
    Given I am an arbitrary user
    And I have a too-big name assigned to me
    And I have a proper email assigned to me
    Then I should be invalid
    Then I have a proper name assigned to me
    And I have a too-big email assigned to me
    Then I should be invalid
  
  
  Scenario: Users' email addresses should be valid
    Given I am an arbitrary user
    And I have a proper name assigned to me
    And my email is "user@example,com"
    Then I should be invalid
    Then my email is "user_at_foo.org"
    Then I should be invalid
    Then my email is ""
