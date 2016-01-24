Given(/^I am an arbitrary user$/) do
  @user = User.new()
end

Then(/^I should be valid$/) do
  @user.should be_valid
end

Then(/^I should be invalid$/) do
  @user.should be_invalid
end

Then(/^I should have a (.*)$/) do |param|
  puts @user.send(param)
end


Then(/^I have a proper name assigned to me$/) do
  @user.name = "John"
end

Then(/^I have a proper email assigned to me$/) do
  @user.email = "foo@bar.com"
end


Given(/^I have a too\-big name assigned to me$/) do
  @user.name = "a"*51
end

Then(/^I have a too\-big email assigned to me$/) do
  @user.email = "a".*256
end