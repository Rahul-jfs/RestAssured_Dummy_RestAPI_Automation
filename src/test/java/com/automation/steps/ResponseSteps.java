package com.automation.steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import com.automation.utils.RestAssuredUtils;

public class ResponseSteps {

    @Then("verify status code is {int}")
    public void verify_status_code_is(int statusCode) {
        Assert.assertEquals(statusCode, RestAssuredUtils.getStatusCode());
    }

    @And("verify collection of posts is generated")
    public void verifyCollectionOfPostsIsGenerated() {
        Assert.assertTrue(RestAssuredUtils.getResponse().jsonPath().getList("id").size() > 1);
    }

    @Given("sleep for {int} milliSeconds")
    public void sleepForSeconds(int sec) throws InterruptedException {
        Thread.sleep(sec);
    }
}
