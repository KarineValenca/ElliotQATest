Feature: Cash Deposit into Elliot

Scenario: Successful cash deposit into Elliot
Given I'm logged in Elliot 
When I click in menu side button
And I click in "Depositar Dinheiro" button
And I fill the value field with the desired amount
And I click in "Gerar Boleto" button
Then I see the billet being downloaded