import org.junit.Test;
import	static	org.junit.Assert.fail;

import junit.framework.TestCase;

import pl.coderslab.entities.Patient;

public class SimpleSampleTest extends TestCase {
	
	@Test
	public	void	test()	{
					Patient p = new Patient();
					assertNotNull(p.getOwnerLastname());
	}

}
