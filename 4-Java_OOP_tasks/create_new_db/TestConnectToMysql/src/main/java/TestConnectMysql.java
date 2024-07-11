import java.sql.*;

public class TestConnectMysql {
    public static void main(String[] args) {

        String url = "jdbc:mysql://localhost:3306/animal_house";
        String user = "animal_guru_111";
        String password = "secretword_554326";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("Connection to animal_house DB is successful!");
        } catch (SQLException e) {
            System.out.println("Connection is failed...");
            System.out.println("Error: " + e.getMessage());
        }
    }

}