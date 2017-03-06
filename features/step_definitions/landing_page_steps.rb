When(/^I am on the article page$/) do
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