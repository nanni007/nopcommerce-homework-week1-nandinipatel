Feature: Nopcommerce registration
  As a user i ant to check the register functionality of Nopcommerce

  Background: I am on Nopcommerce registration page
    Given I open the Google Browser
    When I open the URL https://demo.nopcommerce.com/register
    Then I am on Nopcommerce registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of the registration page
    When I enter first name "<First Name>"
    And I enter last name "<Last Name>"
    And I enter Email address "<Email>"
    And I enter password "<Password>"
    And I enter confirm password "<Confirm password>"
    And Click on register button
    Then I can see an error message "<Error message>"
    And I am not able to register
    Examples:
      | First Name | Last Name | Email            | Password | Confirm password | Error message                               |
      | " "        | bakshi    | bakshi@gmail.com | 456789   | 456789           | please enter first name                     |
      | Rohan      | " "       | bakshi@gmail.com | 456789   | 456789           | please enter last name                      |
      | Rohan      | bakshi    | " "              | 456789   | 456789           | please enter valid email                    |
      | Rohan      | bakshi    | bakshi@gmail.com | " "      | 456789           | password is required                        |
      | Rohan      | bakshi    | bakshi@gmail.com | 456789   | " "              | confirm password is required                |
      | Rohan      | bakshi    | bakshi@gmail.com | 456789   | 567890           | password and confirm passwords do not match |
      | Rohan      | bakshi    | bakshi@gmail.com | 45678    | 45678            | password should be minimum 6 characters     |
      | " "        | " "       | " "              | " "      | " "              | (*) is mandatory field                      |

  Scenario: I should be able to select any one radio button from gender label of your personal details section
    Given I am on gender label of your personal detail section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from dropdown list of date of birth field
    Given I am on Date of birth field of your personal detail section
    When I select day "<Day>"
    And I select month "<Month>"
    And I select year "<Year>"
    Then I am able to select Day, Month and Year from the dropdown list
    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to check and uncheck the Newsletter box on options section
    Given I am on Newsletter label on Options section
    When I click on Newsletter checkbox
    And I again click on Newsletter checkbox
    Then I wasa able to check and uncheck the box next to newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When I enter First name "Rohan"
    And I enter Last name "bakshi"
    And I enter Email "bakshi@gmail.com"
    And I enter Password "456789"
    And I enter Confirm password "456789"
    And I click on register button
    Then I was able to register successfully

