package com.fresco.cucumber;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.openqa.selenium.*;
import org.openqa.selenium.chrome.*;
import org.openqa.selenium.interactions.*;
import java.util.*;

public class RegistrationDefinition{

	String FullName="";
	String Username="";
	String password="";
	String mail="";
	String mobile="";
	String dob="";
	String parentId="";
	String childId="";

	@Given("^I am on Home page$")
	public void givenStatment() {
		hooks.driver.get("http://localhost:8000/");
	}

	@When("^i click the Datagenerator$")
	public void clickDatagenerator() {
		hooks.driver.findElement(By.xpath("/html/body/div[2]/a[1]")).click();
	}

	@When("^i enter into iframe$")
	public void enterIntoIframe() {
		hooks.driver.switchTo().frame(0);
	}

	@When("^i click the data generator button$")
	public void clickDatageneratorButton() {
		hooks.driver.findElement(By.xpath("/html/body/a")).click();
	}

	@When("^i switch to new tab$")
	public void switchTab() {
		Set<String> ids=hooks.driver.getWindowHandles();
		Iterator<String> it=ids.iterator();
		parentId=it.next();
		childId=it.next();
		hooks.driver.switchTo().window(childId);
	}

	@When("^i click the generate button$")
	public void clickGenerateButton() {
		hooks.driver.findElement(By.xpath("/html/body/button")).click();
	}

	@When("^i get the generated random data$")
	public void getGeneratedValues() {
		FullName=hooks.driver.findElement(By.xpath("/html/body/span[1]")).getText();
		Username=hooks.driver.findElement(By.xpath("/html/body/span[2]")).getText();
		password=hooks.driver.findElement(By.xpath("/html/body/span[3]")).getText();
		mail=hooks.driver.findElement(By.xpath("/html/body/span[4]")).getText();
		mobile=hooks.driver.findElement(By.xpath("/html/body/span[5]")).getText();
		dob=hooks.driver.findElement(By.xpath("/html/body/span[6]")).getText();
	}

	@When("^i close the current tab$")
	public void closeCurrentTab() {
        hooks.driver.close();
        hooks.driver.switchTo().window(parentId);
	}


	@When("^i am on registration page$")
	public void gotoRegistrationPage() {
		hooks.driver.findElement(By.xpath("/html/body/div[2]/a[3]")).click();
	}

	@When("^i enter the obtained random data$")
	public void EnterFetchedRandomData() {
		hooks.driver.findElement(By.xpath("//*[@id='register-fullname']")).sendKeys(FullName);
		hooks.driver.findElement(By.xpath("//*[@id='register-username']")).sendKeys(Username);
		hooks.driver.findElement(By.xpath("//*[@id='register-password']")).sendKeys(password);
		hooks.driver.findElement(By.xpath("//*[@id='register-mail']")).sendKeys(mail);
		hooks.driver.findElement(By.xpath("//*[@id='register-mobile']")).sendKeys(mobile);
		hooks.driver.findElement(By.xpath("//*[@id='register-dob']")).sendKeys(dob);
	}

	@Then("^i submit the form$")
	public void thenSubmit() {
		hooks.driver.findElement(By.xpath("//*[@id='register-form']/button")).click();
	}



}