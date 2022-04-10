 
import java.sql.*;
import javax.swing.JOptionPane;
public class DBConnect {
    static Connection c;
    static Statement st;
    public static PreparedStatement ps,checkAdmin,checkEmp,insertEmp,delEmp,updateEmp,insertVehicle,insertMLD;
    static{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://localhost:3306/avps","root","incapp");

            //Class.forName("oracle.jdbc.driver.OracleDriver");
            //c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","avps","avps");
           st=c.createStatement();
            ps=c.prepareStatement("insert into Parking values(?,?,?,?,?,?,?)");
            checkEmp=c.prepareStatement("select * from Member_Login where mid=? and pass=?");
            checkAdmin=c.prepareStatement("select * from Admin_Login where aid=? and pass=?");
            //insertMLD=c.prepareStatement("insert into Mem_Login_Details (mid,name,terminal,logintime,logouttime) values(?,?,?,?,?,?)");
            
        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(null, "DataBase Error: "+ex);
        }
    }
}
