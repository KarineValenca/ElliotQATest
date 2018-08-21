@logout
Feature: Logout

@smoke
Scenario: Sucessful Logout
Given I am logged in Elliot app
When I click on "Sair" button
Then I see the Elliot app home page