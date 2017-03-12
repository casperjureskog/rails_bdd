Feature: As a visitor
  In order to comment articles on the site
  I need to have an comment input form.

  Background:
    Given the following articles exists
      | title                | content                            |
      | A breaking news item | Some really breaking action        |
      | Learn Rails 5        | Build awesome rails applications   |


  Scenario:
    Given I am on the landing page
    And I click "A breaking news item"

    And I fill in "Email" with "email"
    And I fill in "Comment" with "comment"
    And I click "comment"
    Then I should see "comment"
