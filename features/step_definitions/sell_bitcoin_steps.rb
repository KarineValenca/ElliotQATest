require 'calabash-android/calabash_steps'

And /^I have enough bitcoin$/ do
	wait_for_text("Você tem 0,08 BTC", timeout: 10)
end

And /^I select the amount of bitcoin to sell$/ do
	enter_text("android.widget.EditText id:'#{bitcoinAmountField}'", "0.08")
end

And /^I click in "Vender" button$/ do
	tap_when_element_exists("* id:'sellBitcoin'")
end

Then /^I get the amount in BRL minus the fee amount$/ do
	wait_for_text("Você tem R$ 500,00", timeout: 10)
end

And /^I do not have enough bitcoin$/ do
	wait_for_text("Você tem 0,00 BTC", timeout: 10)
end
