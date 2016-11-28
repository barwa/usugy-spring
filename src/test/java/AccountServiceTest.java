import com.usugy.model.Account;
import com.usugy.service.AccountService;
import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.assertEquals;

/**
 * Created by tomek on 2016-11-11.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/jpaContext.xml",
        "classpath:/mail-config.xml"})

public class AccountServiceTest {

    private Account account;

    @Autowired
    private AccountService accountService;

    @BeforeClass
    public static void before() {
        System.out.println("BeforeClass");
    }

    @AfterClass
    public static void after() {
        System.out.println("AfterClass");
    }

    @Before
    public void setUp() {
        System.out.println("Before");
        account = new Account();
        account.setFirstname("Jan");
        account.setLastname("Kowalski");
        account.setPassword("password");
        account.setEmail("jan.kowalski@mail.com");
    }

    @After
    public void tearDown() {
        System.out.println("After");
    }

    @Test
    @Ignore
    public void createAndSaveNewAccountTest(){
//        dummyClass.setB(input);
//        assertEquals(expected, dummyClass.getB());
        accountService.createAndSaveNewAccount(account);
        Account tmpAccount = accountService.findByEmail(account.getEmail());
        assertEquals(account.getEmail(), tmpAccount.getEmail());

    }
}
