import org.junit.Test;

import static org.junit.Assert.fail;

public class MainServletTest {

    @Test
    public void testLiteWordPresence() {
        // Check if the word "lite" is present in the code
        String codeToTest = "your code here";
        if (codeToTest.contains("lite")) {
            // Fail the test and prevent successful build and deployment
            fail("The word 'lite' is present in the code. Build and deployment should fail.");
        }
    }
}
