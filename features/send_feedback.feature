Feature: Send Feedback

Scenario: Successful send feedback
Given I'm logged in Elliot app
When I click in menu side button
And I click in "Enviar feedback" button
And I fill feedback field with valid data
And I click in "Enviar" button
Then I see a message informing "Feedback enviado com sucesso."

Scenario: Unsuccessful send feedback with blank field
Given I'm logged in Elliot app
When I click in menu side button
And I don't fill feedback field
And I click in "Enviar feedback" button
And I click in "Enviar" button
Then I see a message informing "Não foi possível enviar o feedback. Verifique os campos indicados."