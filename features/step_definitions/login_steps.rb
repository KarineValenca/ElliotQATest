require 'calabash-android/calabash_steps'

Given /^I am in Elliot app home page$/ do
	wait_for_text("Elliot", timeout: 10)
end

When /^I click on "Fazer Login" button$/ do
	tap_when_element_exists("* id:'loginButton'")
end

And /^I fill email field with a valid email$/ do
	enter_text("android.widget.EditText id:'#{emailField}'", "email@example.com")
end

And /^I fill password field with a valid password$/ do
	enter_text("android.widget.EditText id:'#{passwordField}'", "12345678")
end

And /^I click on "Entrar" button$/ do
	tap_when_element_exists("* id:'enterButton'")
end

Then /^I see the sell and buy bitcoin page$/ do
	wait_for_text("Compre e Venda Bitcoins", timeout: 10)
end

And /^I fill email field with a non-registered email$/ do
	enter_text("android.widget.EditText id:'#{emailField}'", "invalidemail@example.com")
end

Then /^I see a message informing "([^\"]*)"$/ do |text|
	wait_for_text(text, timeout: 10)
end

And /^I do not fill email field$/ do
	clear_text_in("android.widget.EditText id:'#{emailField}'")
end

And /^I fill password field with a wrong password$/ do
	enter_text("android.widget.EditText id:'#{passwordField}'", "invalidPassword")
end

And /^I do not fill password field$/ do
	clear_text_in("android.widget.EditText id:'#{passwordField}'")
end