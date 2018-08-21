require 'calabash-android/calabash_steps'

Given /^I am logged in Elliot app$/ do
	enter_text("android.widget.EditText id:'#{emailField}'", "email@example.com")
	enter_text("android.widget.EditText id:'#{passwordField}'", "12345678")
	tap_when_element_exists("* id:'enterButton'")
	wait_for_text("Compre e Venda Bitcoins", timeout: 10)
end

When /^I click on "Sair" button$/ do
	tap_when_element_exists("* id:'logoutButton'")
end

Then /^I see the Elliot app home page$/ do
	wait_for_text("Elliot", timeout: 10)
end