Given /^there is a user named "([^"]*)"$/ do |name|
  User.create!(:name => name)
end
