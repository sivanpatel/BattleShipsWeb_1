Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Registering
  Given I am on the homepage
  When I follow "Register"
  Then I should see "What's your name?"


Scenario: Creating a new game
  Given I am on "Register"
  When I fill in "name" with "gaby"
  Then I press "Submit"
  Then I should see "Registration successful"

  Given I am on "Register"
  When I fill in "name" with ""
  Then I press "Submit"
  Then I should see "What's your name?"

  Given I am on "Register"
  When I fill in "name" with "gaby"
  Then I press "Submit"
  Then I should see "Go to game"

  Given I am on "Register"
  When I fill in "name" with "gaby"
  Then I press "Submit"
  Then I follow "Go to game"
  Then I should be on "/game/new"
