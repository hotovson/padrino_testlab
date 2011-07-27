Feature: Admin Login
  In order to log into the admin
  As an admin
  I want to be shown a login screen

  Scenario: Go to the login screen
    Given I visit the admin page
    And I fill in 'barce@me.com' for 'email'
    And I fill in 'flaky9pie' for 'password'
    When I press 'submit'
    Then I should see 'Padrino Admin'
