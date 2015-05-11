Feature: Search
  In order to find pages on the web
  As an information seeker
  I want to be able to search using keywords

  @javascript
  Scenario: Search for cucumber with a valid postcode
    Given I am on the home page
    And I have entered "Nick" into the "firstname" field
    And I have entered "Devetak" into the "lastname" field
    And I have entered "SE1 3RX" into the "postcode" field
    When I submit the page
    Then I can view the details
