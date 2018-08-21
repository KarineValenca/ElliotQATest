@login 
Feature: Login

@smoke
Scenario: Sucessful login
Given I am in Elliot app home page
When I click on "Fazer Login" button
And I fill email field with a valid email
And I fill password field with a valid password
And I click on "Entrar" button
Then I see the sell and buy bitcoin page

Scenario: Unsuccessful login with non-registered email
Given I am in Elliot app home page
When I click on "Fazer Login" button
And I fill email field with a non-registered email
And I fill password field with a valid password
And I click on "Entrar" button
Then I see a message informing "Usuario ou senha inválidos"

Scenario: Unsuccessful login with blank e-mail
Given I am in Elliot app home page
When I click on "Fazer Login" button
And I do not fill email field
And I fill password field with a valid password
And I click on "Entrar" button
Then I see a message informing "Usuario ou senha inválidos"

Scenario: Unsuccessful login with wrong password
Given I am in Elliot app home page
When I click on "Fazer Login" button
And I fill email field with a valid e-mail
And I fill password field with a wrong password
And I click on "Entrar" button
Then I see a message informing "Usuario ou senha inválidos"

Scenario: Unsuccessful login with blank password
Given I am in Elliot app home page
When I click on "Fazer Login" button
And I fill email field with a valid e-mail
And I do not fill password field
And I click on "Entrar" button
Then I see a message informing "Usuario ou senha inválidos"