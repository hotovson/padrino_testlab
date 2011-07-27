Given /^I visit the index page$/ do
  visit '/'
end

Then /^I should see '(.*)'$/ do |text|
  page.should have_content("#{text}")
end
