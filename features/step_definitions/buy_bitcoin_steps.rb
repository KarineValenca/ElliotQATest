require 'calabash-android/calabash_steps'

And /^I have enough money$/ do
	wait_for_text("Você tem R$ 500,00", timeout: 10)
end

When /^I click in menu side button$/ do
	tap_when_element_exists("* id:'sideButton'")
end

And /^I click in "Comprar e Vender Bitcoin" button$/ do
	tap_when_element_exists("* id:'buySellButton'")
end

And /^I select the amount of bitcoin to buy$/ do
	enter_text("android.widget.EditText id:'#{bitcoinAmountField}'", "0.08")
end

And /^I click in "Comprar" button$/ do
	tap_when_element_exists("* id:'buyBitcoin'")
end

Then /^I get the amount in bitcoin minus the fee amount$/ do
	wait_for_text("Você tem 0.08 BTC", timeout: 10)
end

And /^I do not have enough money$/ do
	wait_for_text("Você tem R$ 0,00", timeout: 10)
end