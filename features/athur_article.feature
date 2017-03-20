Feature: As a authors
  In order to se my article
  I need to have a page whit my articles

  Background:
    Given the following articles exists
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Amber  |

  Scenario:
    Given I am on the landing page
    Then show me the page
    And I should see "List of authors"
    And I click "Thomas"
    Then I should see "A breaking news item"
