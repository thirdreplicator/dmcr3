Feature: List widgets

As an anonymous user
I can see a list of widgets
In order to see which widgets are tasty

Scenario: Anonymous user, blank page

Given I am an anonymous user
When I am on the widget listing page
Then I should see "Widget listing"

Scenario: Logged in user, create widget

Given there is a user with email "thirdreplicator@gmail.com" and password "abc123"
And I am logged in as "thirdreplicator@gmail.com"
When I go to the new widget page
And I fill in "Ipad" for "widget_name"
And I press "Create"
Then I should be on the widget show page for "Ipad"
And I should see "Ipad"
