Feature: As a authors
  In order to se my article
  I need to have a page whit my articles

  Scenario:
    Given I am on the landing page
    Then I should see "List of authors"
    And I click "Skriv Nisse"
    Then I should see "Skriv Nisses articles"
