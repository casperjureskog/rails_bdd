Feature: As a authors
  In order to se my article
  I need to have a page whit my articles

  Scenario:
    Given I am on the landing page
    Then I select "Thomas" from "Authors"
    And I click "Chose"
    Then I should see "Skriv Nisses articles"
