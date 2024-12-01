import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {

    public static void main(String[] args) throws SQLException {
        Connection connection = conectarAMySql();
        if (connection != null) {
            System.out.println("Conexión exitosa a MySQL.");
        } else {
            System.out.println("Error al conectar a MySQL.");
        }


        closeConnection(connection);
    }

    // Función para conectar a MySQL

    public static Connection conectarAMySql() {
        String url = "jdbc:mysql://localhost:3307";
        String user = "root";
        String password = "db12345"; // Cambiar según tu configuración
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, "Error al conectar a MySQL", ex);
        }

        return connection;
    }

    // Cerrar conexión

    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Conexión cerrada correctamente.");
            } catch (SQLException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, "Error al cerrar la conexión", ex);
            }
        }
    }
}
