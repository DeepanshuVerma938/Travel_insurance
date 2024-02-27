package com.Insurance.testRunner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
//import io.cucumber.junit.CucumberOptions;
import io.cucumber.testng.CucumberOptions;

//@RunWith(Cucumber.class)
@CucumberOptions(features = { ".//Features/EToE.feature" }, glue = "com.travelInsurance.stepDefinitions", plugin = {
		"pretty", "html:reports/myreport.html", "rerun:target/rerun.txt",
		"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:" }, dryRun = false, monochrome = true) // tags
																														// =
																														// "@sanity")

public class testRun extends AbstractTestNGCucumberTests {

}
