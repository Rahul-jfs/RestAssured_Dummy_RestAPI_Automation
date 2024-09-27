Feature: Dummy Rest API functionality

#  Background:
#    Given sleep for 5000 milliSeconds

  Scenario: verify user can get all the employee details
    Given user wants to call "/api/v1/employees" end point
    When user perform get call
    Then verify status code is 200

  Scenario: verify user can get single employee data
    Given user wants to call "/api/v1/employee/1" end point
    When user perform get call
    Then verify status code is 200

  Scenario: verify user can create a new record
    Given user wants to call "/api/v1/create" end point
    And set "Content-Type" to "/application/json"
    And send body from file "/createRecord.json"
    When user perform post call
    Then verify status code is 200

  Scenario: Verify the record is updated
    Given user wants to call "/api/v1/update/2" end point
    And set "Content-Type" to "application/json"
    And send updated body from file "/updateRecord.json"
    When user perform put call
    Then verify status code is 200

  Scenario: verify the post is deleted
    Given user wants to call "/api/v1/delete/2" end point
    When user perform delete call
    Then verify status code is 200
