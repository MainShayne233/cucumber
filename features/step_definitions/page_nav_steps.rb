Given(/^I am on the (.*) page$/) do |page|
  page_path = "#{page}_path"
  visit(send(page_path))
end