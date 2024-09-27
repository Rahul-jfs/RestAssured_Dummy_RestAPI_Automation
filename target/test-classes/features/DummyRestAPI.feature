Feature: Dummy Rest API functionality

  Background:
    Given sleep for 5000 milliSeconds

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


#  Background:
#    Given sleep for 5000 milliSeconds
#
#  Scenario: verify collection of posts are generated
#
#    Given user wants to call "/api/posts" end point
#    When user perform get call
#    Then verify status code is 200
#    And verify collection of posts is generated
#
#  Scenario: verify single post is accessed
#    Given user wants to call "/api/posts/1" end point
#    When user perform get call
#    Then verify status code is 200
#
#  Scenario: verify the resource is posted
#    Given user wants to call "/api/posts" end point
#    And set "Content-Type" to "application/json"
#    And send body from file "/createResource.json"
#    When user perform post call
#    Then verify status code is 201
#
#  Scenario: Verify the resource is updated
#
#    Given user wants to call "/api/posts/10" end point
#    And set "Content-Type" to "application/json"
#    And send updated body from file "/updateResource.json"
#    When user perform put call
#    Then verify status code is 200
#
#
#  Scenario: verify the resource is patched
#    Given user wants to call "/api/posts/16" end point
#    And set "Content-Type" to "application/json"
#    And send updated body from file "/patchResource.json"
#    When user perform patch call
#    Then verify status code is 200
#
#  Scenario: verify the post is deleted
#    Given user wants to call "/api/posts/9" end point
#    When user perform delete call
#    Then verify status code is 204