Feature: Manage store settings

  Scenario: User should be able to specify store when app is loaded for first time
    Given I am on the store settings screen
    When I enter the store id as "532"
    Then I should be order summary screen
    When I click on settings button
    And I see the store id value as "532" in settings screen