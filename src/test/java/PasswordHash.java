import junit.framework.TestCase;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Created by tomek on 2016-09-08.
 */
public class PasswordHash extends TestCase {

    public void testBCryptHash() {
        String password = "asd";
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = bCryptPasswordEncoder.encode(password);
        System.out.println(hashedPassword);
    }

}


