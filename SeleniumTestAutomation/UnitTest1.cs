using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using Xunit;

namespace SeleniumTestAutomation
{
    [TestCaseOrderer("SeleniumTestAutomation.PriorityOrderer", "SeleniumTestAutomation")]
    public class UnitTest1
    {
         private IWebDriver _driver;
      
    
      
        public UnitTest1(){
        //    // _factory=factory;
             var opts = new ChromeOptions();
        opts.AddArgument("--headless");
            _driver = new ChromeDriver(opts);

        }
        [Fact]
        public void Test1()
        {
            
        }
          
    }
}
