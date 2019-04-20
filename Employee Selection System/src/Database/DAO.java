package Database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by Ramzah Rehman on 3/19/2017.
 */
 public abstract class DAO {
    public abstract boolean save(Object object );//isma email kharab ho to return false.

        static Connection con;

    static{

        try{

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-ND3EINK\\SQLEXPRESS;databaseName=HRSystem;integratedSecurity=true");

        }
        catch (Exception e){
            System.out.println("kl");
            e.printStackTrace();
        }
    }


}

