Feature: As a visitor
  In order to comment articles on the site
  I need to have an comment input form.

  Background:
  Given the following articles exists
    | title                | content                          | author |
    | A breaking news item | Some really breaking action      | Thomas |
    | Learn Rails 5        | Build awesome rails applications | Amber  |


  Scenario:
    Given I am on the landing page
    And I click "A breaking news item"
    And I fill in "Email" with "email@nisse.com"
    And I fill in "Comment" with "some thing"
    And I click "comment"
    Then I should see "some thing"
