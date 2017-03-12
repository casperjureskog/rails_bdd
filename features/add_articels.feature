Feature: As a writer
  In order to add articles to the site
  I need to have an new page with a input form.

  Background:
    When I visit the writer site

  Scenario:
    Given I visit the writer site
    And I fill in "title" with "title"
    And I fill in "content" with "content"
    And I click "add"
    Then I should see "content"