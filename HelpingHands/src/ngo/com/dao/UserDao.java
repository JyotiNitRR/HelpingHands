package ngo.com.dao;
import ngo.com.bo.User;
public interface UserDao {
	  public abstract User validate(String loginId,String loginPassword);
		
	  public abstract boolean signup(String Name,String Email, String Password, String role, long mobile);
}
