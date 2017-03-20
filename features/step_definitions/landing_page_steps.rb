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
  fill_in title , with: content
end

When(/^I visit the writer site$/) do
  visit new_post_path
end

When(/^I visit the site$/) do
  visit root_path
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I select "([^"]*)" from "([^"]*)"$/) do |option, select|
  select option, from: select
end

Then(/^show me the page$/) do
  save_and_open_page
end
