class LulzyGreeter
  def greet
    p"OH HAI CUCUMBER!" 
  end
end





Given(/^a lulz greeter$/) do
  @greeter = LulzyGreeter.new
end

When(/^I send it the greet message$/) do
  @message = @greeter.greet
end

Then(/^I should see "(.*?)"$/) do |lulzy_greeting|
  expect(@message).to eq lulzy_greeting
end
