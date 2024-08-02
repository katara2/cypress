 addition

  Scenario: Select a cashier and view sales dashboard
    Given I open the cashier selection page
    When I select "Cashier 1"
    And I click the next button
    Then I should see the sales dashboard for "Cashier 1"

  Scenario: Add sales for a cashier
    Given I open the cashier selection page
    When I select "Cashier 1"
    And I click the next button
    Then I should see the sales dashboard for "Cashier 1"
    When I click the add sale button
    Then I should see the sale details page
    When I add 2 "Apple" to the sale
    And I add 3 "Orange" to the sale
    And I submit the sale details
    Then I should see the updated sales for "Cashier 1"
  Scenario: Select a cashier and view sales dashboard
    Given I open the cashier selection page
    When I select "Cashier 1"
    And I click the next button
    Then I should see the sales dashboard for "Cashier 1"

  Scenario: Add sales for a cashier
    Given I open the cashier selection page
    When I select "Cashier 1"
    And I click the next button
    Then I should see the sales dashboard for "Cashier 1"
    When I click the add sale button
    Then I should see the sale details page
    When I add 2 "Apple" to the sale
    And I add 3 "Orange" to the sale
    And I submit the sale details
    Then I should see the updated sales for "Cashier 1"

    Scenario: Verify default state of cashier selection page
  Given I open the cashier selection page
  Then I should see "Select Cashier" with no cashier selected by default
  And the "Next" button should be disabled
Scenario: Select different cashiers and navigate to the sales dashboard
  Given I open the cashier selection page
  When I select "Cashier 1"
  And I click the next button
  Then I should see the sales dashboard for "Cashier 1"
  When I click the "Switch Cashier" button
  Then I should return to the cashier selection page
  When I select "Cashier 2"
  And I click the next button
  Then I should see the sales dashboard for "Cashier 2"
Scenario: Add and remove items in the sale details
  Given I open the cashier selection page
  When I select "Cashier 1"
  And I click the next button
  Then I should see the sales dashboard for "Cashier 1"
  When I click the add sale button
  Then I should see the sale details page
  When I add 2 "Apple" to the sale
  And I add 3 "Orange" to the sale
  Then the total for "Apple" should be "$2.02"
  And the total for "Orange" should be "$6.06"
  When I remove 1 "Orange" from the sale
  Then the total for "Orange" should be "$4.04"


