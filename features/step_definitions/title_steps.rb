Then(/^the title should be "([^"]*)"$/) do |page_title|
  expect(page).to have_title page_title
end