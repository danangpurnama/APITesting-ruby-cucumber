Feature: Request With Header

    Scenario: Request With Header
        Given I set headers:
            | Accept     | application/json |
            | User-Agent | desktop-browser  |
        When I send and accept JSON
        And I send a GET request to "/api/users" with the following:
            | page     | 2 |
            | per_page | 6 |
        Then the response status should be "200"
        And show me the response