package com.automation.steps;

import io.cucumber.java.Before;
import io.restassured.RestAssured;
import com.automation.utils.ConfigReader;

public class Hooks {
    @Before
    public void setUp() {
        ConfigReader.initProperties();
        RestAssured.baseURI = ConfigReader.getValue("base.url");
    }
}
