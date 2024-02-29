package com.Insurance.testRunner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

//@RunWith(Cucumber.class)
@CucumberOptions(features = { ".//Features/InsuranceSmoke.feature" }, glue = "com.Insurance.stepDefinitions", plugin = {
		"pretty", "html:reports/myreport.html", "rerun:target/rerun.txt",
		"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:" }, dryRun = false, monochrome = true)

public class testRun extends AbstractTestNGCucumberTests {

}