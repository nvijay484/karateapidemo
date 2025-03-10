package examples.users;

import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;

class UsersRunner {
    
    @Karate.Test
    Results testUsers() {
        return Karate.run().tags("@smoke").relativeTo(getClass()).parallel(2);
    }    
   
}
