Given /^I am on the home page$/ do
  visit('/')
end

Given /^I have entered "([^"]*)" into the "([^"]*)" field$/ do |text, field|
  fill_in field, :with => text
end

When(/^I submit the page$/) do
  click_button('Submit')
end

Then(/^I can view the details$/) do
  page.should have_content('Nick')
  page.should have_content('Devetak')
  page.should have_content('SE1 3RX')
end
