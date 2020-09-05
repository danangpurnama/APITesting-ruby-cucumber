Feature: Assert Response Code

    Scenario: Positive Test Code
        When I send and accept JSON
        And I send a GET request to "/api/users/2"
        Then the response status should be "200"