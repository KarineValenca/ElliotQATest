@sell_bitcoin
Feature: Sell Bitcoin

@smoke
Scenario: Successful sell bitcoin
Given I'm logged at Elliot app
And I have enough bitcoin
When I click in menu side button
And I click in "Comprar e Vender Bitcoin" button
And I select the amount of bitcoin to sell
And I click in "Vender" button
Then I get the amount in BRL minus the fee amount

Scenario: Unsucessful sell bitcoin
Given I'm logged at Elliot app
And I do not have enough bitcoin
When I click in menu side button
And I click in "Comprar e Vender Bitcoin" button
And I select the amount of bitcoin to sell
And I click in "Vender" button
Then I see a message informing "Não foi possível vender bitcoins. Você não tem bitcoins suficientes."