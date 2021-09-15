package Cone;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    Connection con;
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/venta_estadia","root",""); 
        }catch (Exception e){
            System.err.println("Error:" +e);
        }
    }
    public static void main(String[] args){
        Conexion cn=new Conexion();
    }
}
