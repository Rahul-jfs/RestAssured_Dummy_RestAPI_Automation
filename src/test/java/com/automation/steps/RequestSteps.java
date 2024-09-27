package com.automation.steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import com.automation.utils.RestAssuredUtils;

public class RequestSteps {

    @When("user wants to call {string} end point")
    public void user_wants_to_call_end_point(String endPoint) {
        RestAssuredUtils.setEndPoint(endPoint);
    }

    @When("set {string} to {string}")
    public void set_to(String key, String value) {
        RestAssuredUtils.setHeader(key,value);
    }

    @When("send body from file {string}")
    public void send_body_from_file(String fileName) {
        RestAssuredUtils.sendBody(fileName);
    }

    @When("user perform post call")
    public void user_perform_post_call() {
        RestAssuredUtils.post();
    }


    @When("user perform get call")
    public void userPerformGetCall() {
        RestAssuredUtils.get();
    }

    @And("user perform put call")
    public void userPerformPutCall() {
        RestAssuredUtils.put();
    }

    @And("send updated body from file {string}")
    public void sendUpdatedBodyFromFile(String fileName) {
        RestAssuredUtils.sendUpdatedBody(fileName);
    }

    @When("user perform patch call")
    public void userPerformPatchCall() {
        RestAssuredUtils.patch();
    }

    @When("user perform delete call")
    public void userPerformDeleteCall() {
        RestAssuredUtils.delete();
    }


}
