Feature: Sale Details Management

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

  Scenario: Submit sale and verify dashboard update
    Given I open the cashier selection page
    When I select "Cashier 1"
    And I click the next button
    Then I should see the sales dashboard for "Cashier 1"
    When I click the add sale button
    Then I should see the sale details page
    When I add 2 "Apple" to the sale
    And I add 3 "Orange" to the sale
    And I submit the sale details
    Then I should see the updated sales for "Cashier 1" on the dashboard
  Scenario: Submit sale and verify dashboard update
  Given I open the cashier selection page
  When I select "Cashier 1"
  And I click the next button
  Then I should see the sales dashboard for "Cashier 1"
  When I click the add sale button
  Then I should see the sale details page
  When I add 2 "Apple" to the sale
  And I add 3 "Orange" to the sale
  And I submit the sale details
  Then I should see the updated sales for "Cashier 1" on the dashboard
Scenario: Verify UI elements on sales dashboard
  Given I open the cashier selection page
  When I select "Cashier 1"
  And I click the next button
  Then I should see the sales dashboard for "Cashier 1"
  And I should see a bar chart with the title "Cashier Sales Statistics"
  And I should see a button labeled "Switch Cashier"
  And I should see a button labeled "Add Sale"

