Feature: List widgets

As an anonymous user
I can see a list of widgets
In order to see which widgets are tasty

Scenario: Anonymous user, blank page

Given I am an anonymous user
When I am on the widget listing page
Then I should see "Widget listing"