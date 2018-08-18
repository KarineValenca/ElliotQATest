Feature: Change Registration Information

Scenario: Sucessful change registration information 
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Editar informações cadastrais" button
And I fill registration information with valid data
And I click in "Salvar" button
Then I see a message informing "Dados alterados com sucesso"

Scenario: Unsucessful change registration information with blank data
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Editar informações cadastrais" button
And I leave all the fields blank 
And I click in "Salvar" button
Then I see a message informing "Não foi possível alterar os dados. Verifique os campos indicados."

Scenario: Unsucessful change registration information with invalid CPF
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Editar informações cadastrais" button
And I insert registration information with an invalid CPF
And I click in "Salvar" button
Then I see a message informing "O CPF inserido é inválido. Verifique o campo indicado"

Scenario: Unsucessful change registration information with invalid email
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Editar informações cadastrais" button
And I insert registration information with an invalid email
And I click in "Salvar" button
Then I see a message informing "O E-mail inserido é inválido. Verifique o campo indicado"