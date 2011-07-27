Feature: All Tasks
  In order to view all tasks
  As a user
  I want to be shown all tasks

  Scenario: Go to the index screen
    Given I visit the index page
    Then I should see 'All Tasks'
