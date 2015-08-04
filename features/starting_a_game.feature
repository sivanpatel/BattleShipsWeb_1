Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

Scenario: Registering
  Given I am on the homepage
  When I follow "New Game"
  Then I should see "What's your name?"

Scenario: Creating a new game
  Given I follow "New Game"
  When I enter my name
  Then I should start a new game
