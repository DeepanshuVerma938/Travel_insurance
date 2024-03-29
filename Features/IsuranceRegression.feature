Feature: Regression testing for policybazaar site

  @regression
  Scenario: Negative steps for user performs invalid actions on Car Insurance page
    Given user navigates to car insurance page
    And directly clicks view price
    Then user capture error

  #@regression
  #Scenario Outline: Filling the invalid contact details
  #	Given user is on please fill your details page
  #When user entered the "<name>" name
  #And user entered the "<email>" email &  "<mobileNumber>" mobilenumber
  #Then user should able to capture the error message
  #
  #Examples:
  #| name       |    email     | mobileNumber |
  #| Rahul      |   abc@123    |   123448900  |
  #| Aman       | 788abc@.com  |   7857456644 |
  
  @regression
  Scenario: Validating the user actions when user selects only child without parent on Health Insurance Page
    Given user navigates to health insurance page
    And user selects only one child
    Then user should able to get error

  @regression
  Scenario: Validating user invalid inputs for booking Two wheeler Insurance plans
    Given user navigates to two wheeler insurance page
    And user enters invalid number
    Then user get error message & not able to proceed further

  @regression
  Scenario: Validate user details when user selects child saving Insurance policies
    Given user navigates to child savings insurance page
    When user enters name and invalid number
    Then user should not allowed to proceed

  @regression
  Scenario: Validate user details when user selects different Retirement Insurance plans
    Given user navigates to Retirement plan insurance page
    When user fills invalid name and invalid number
    Then user able to view error message

  @regression
  Scenario: Validate user details when user selects different Home Insurance plans
    Given user navigates to Home Insurance plan page
    When user gives name and number as invalid
    Then user must see the invalid message

  @regression
  Scenario: Validate user details when user selects different Home Insurance plans
    Given user navigates to Home Insurance plan page
    When user gives name and number as invalid
    Then user must see the invalid message
    When clicked on view plan & continue with this number
    Then user user should not navigated to external page
