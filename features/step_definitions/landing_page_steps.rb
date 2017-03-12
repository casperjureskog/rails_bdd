When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |title, content|
  fill_in 'Title', with: title
  fill_in 'Content', with: content
end


Then /^I click add$/ do
  click_link_or_button 'add'
end

When(/^I visit the writer site$/) do
  visit new_post_path
end


When(/^I visit the site$/) do
  visit root_path
end


When(/^i click on link "([^"]*)"$/) do |arg1|
  click_link_or_button arg1
end

Then(/^show me the page$/) do
  save_and_open_page
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end