import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.testng.Assert;
import org.testng.annotations.Test;

@KarateOptions(features = {"classpath:features/"}, tags = {"~@ignore"})
public class TestRunner {
    @Test
    public void startTest()
    {
        Results results = Runner.parallel(getClass(), 2);
        Assert.assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }
}
