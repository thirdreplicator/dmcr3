Feature: List widgets

As an anonymous user
I can see a list of widgets
In order to see which widgets are tasty

Scenario: Anonymous user, blank page

Given I am an anonymous user
When I am on the widget listing page
Then I should see "Widget listing"

Scenario: Logged in user, create widget

Given there is a user named "David"
And I am logged in as "David"
When I go to the new widget page
And I fill in "Ipad" for "widget_name"
And I press "Create"
Then I should be on the widget show page
And I should see "Ipad"