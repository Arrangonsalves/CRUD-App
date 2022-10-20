package user;
import java.sql.*;  
public class LoginDao 
{
	public static boolean validate(LoginBean bean)
	{  
		boolean status=false;  
		try
		{  
			String connectionURL = "jdbc:mysql://localhost:3306/test";
			Connection con=null;
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(connectionURL, "root", "root");
		           
			String q="select * from register";
			Statement st=con.createStatement();
			ResultSet set=st.executeQuery(q);
			while(set.next())
			{
				String email=set.getString("email");
				String pass =set.getString("password");
				if(email.equals(bean.getEmail()))
				{
					if(pass.equals(bean.getPass()))
					{
							status=true;
							break;
					}
				}
			}
			
		}catch(Exception e){}  
		  
		return status;  
		  
	}  

}
