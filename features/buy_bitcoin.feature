Feature: Buy Bitcoin

Scenario: Sucessful buy bitcoin
Given I'm logged at Elliot app
And I have enough money
When I click in menu side button
And I click in "Comprar e Vender Bitcoin" button
And I select the amount of bitcoin to buy
And I click in "Comprar" button
Then I get the amount in bitcoin minus the fee amount

Scenario: Unsucessful buy bitcoin
Given I'm logged at Elliot app
And I don't have enough money
When I click in menu side button
And I click in "Comprar e Vender Bitcoin" button
And I select the amount of bitcoin to buy
And I click in "Comprar" button
Then I see a message informing "Não foi possível comprar bitcoins. Você não tem dinheiro suficiente."