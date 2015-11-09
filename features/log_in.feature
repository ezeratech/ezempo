Feature:
  As an employee
  I can log in to the portal
  So that I will be able to view my profile

  Scenario: Employee logs into the portal
    Given there is no user logged in
    And there is a user account with email "someone@ezeratech.com" and password "heyitsme123"
    When I go to the sign in page
    And I fill in "someone@ezeratech.com" for the Email in the new_user section
    And I fill in "heyitsme123" for the Password in the new_user section
    And I click the 'Log in' button
    Then I should be signed in as "someone@ezeratech.com"