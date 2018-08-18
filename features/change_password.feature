Feature: Change Password

Scenario: Sucessful change password 
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Alterar senha" button
And I fill old password field with a valid password
And I fill new password field with a valid password
And I fill password confirmation field with the same data from new password field 
And I click in "Salvar" button
Then I see a message informing "Senha alterada com sucesso."

Scenario: Unsucessful change password with wrong old password
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Alterar senha" button
And I fill old password field with a wrong password
And I fill new password field with a valid password
And I fill password confirmation field with the same data from new password field
And I click in "Salvar" button
Then I see a message informing "Não foi possível alterar a senha. Senha antiga incorreta."

Scenario: Unsucessful change password with different password confirmation
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Alterar senha" button
And I fill old password field with a valid password
And I fill new password field with a valid password
And I fill password confirmation field with different data from new password field
And I click in "Salvar" button
Then I see a message informing "Não foi possível alterar a senha. Confirmação de senha incorreta."

Scenario: Unsucessful change password with blank fields
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Alterar senha" button
And I don't fill old password field
And I don't fill new password field
And I don't fill password confirmation field
And I click in "Salvar" button
Then I see a message informing "Não foi possível alterar a senha. Verifique os campos indicados."