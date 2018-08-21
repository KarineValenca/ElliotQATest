Feature: Bitcoin Deposit

Scenario: Successful bitcoin deposit via QR Code
Given I'm logged in Elliot 
When I click in menu side button
And I click in "Depositar Bitcoins via QR Code" button
And I fill the field with the desired amount
And I click in "Gerar QR Code" button
Then I see the QR Code with the option to share it