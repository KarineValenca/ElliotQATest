Feature: Bitcoin chart

Scenario: Access bitcoin chart
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Visualizar Gráfico de Bitcoin" button
Then I see the bitcoin chart

Scenario: Filter period in bitcoin chart
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Visualizar Gráfico de Bitcoin" button
And I select a period in chart
Then I see the bitcoin chart filtered by the selected filter