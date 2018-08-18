Feature: Logout

Scenario: Sucessful Logout
Given I'm logged in Elliot app
When I click on "Sair" button
Then I see the Elliot app home page