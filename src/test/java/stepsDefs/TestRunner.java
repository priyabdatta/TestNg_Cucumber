package stepsDefs;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)


@CucumberOptions(
		
		
		plugin =  {"html:target/html-cucumber","json:target/cucumber.json"},
		features = "src/test/java/features",
		//tags = {"@F_1234"},
		//tags ={ @Sanity}, to run one single tag
		
		//tags = {"@Sanity,@Regression"},  //to run multiple tags using OR
		//tags = {"@Sanity or @Regression"},  //to run multiple tags using OR
		
		
		//tags = {"@Regression" , "@Rapid"}, //to run multiple tags using AND
		//tags = {"@Regression and  @Rapid"}, //to run multiple tags using AND
		//tags = {"@Sanity or @regression and @Rapid"},
		tags = {"not @Sanity"},//not to run sanity test
		glue = {"stepsDefs"}
		
		
		)

public class TestRunner {

}
