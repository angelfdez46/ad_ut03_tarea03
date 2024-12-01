import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Date;

public class Main {

    public static void main(String[] args) {

        Connection connection = conectarAMySql();
        if (connection != null) {
            System.out.println("Conexión exitosa a MySQL.");

            // ejecutar los metodos para leer los archivos y cerrar conexión
            ejecutarScript(connection, "data/structure.sql");
            ejecutarScript(connection, "data/data.sql");

            // insertar los datos de la familia
            insertarDatos(connection);

            // Crear dos regiones
            crearRegion(connection, 1, 1001, "Norte", "Frío", 200.5); // Parámetros de ejemplo
            crearRegion(connection, 2, 1002, "Sur", "Calor", 300.7); // Parámetros de ejemplo

            // Llamada a recorrerRegiones
            recorrerRegiones(connection);


            // buscarId para buscar al hermano (por el nombre "Weiss")
            Integer idHermano = buscarId(connection, "people", "nombre", "Weiss");

            if (idHermano == null) {
                System.out.println("No encontramos a su hermano, señor.");
            } else {
                // Llamar a borrarPeoplePorId si encontramos al hermano
                int registrosBorrados = borrarPeoplePorId(connection, idHermano);
                System.out.println(registrosBorrados + " hermano/s 'borrado/s'.");

                // Verificar que no queda rastro del hermano
                idHermano = buscarId(connection, "people", "nombre", "Weiss");
                if (idHermano == null) {
                    System.out.println("El hermano ha sido borrado de los anales de la historia.");
                } else {
                    System.out.println("El hermano aún sigue en los registros.");
                }
            }

            // metodo buscarID
            Integer id = buscarId(connection, "people", "nombre", "Padre");
            if (id != null) {
                System.out.println("ID del registro encontrado: " + id);
            } else {
                System.out.println("No se encontró ningún registro con el valor especificado.");
            }

            // metodo listarCasas
            listarCasas(connection);


            // Cerrar la conexión
            closeConnection(connection);

        } else {
            System.out.println("Error al conectar a MySQL.");
        }
    }

    // Conectar a MySQL
    public static Connection conectarAMySql() {
        String url = "jdbc:mysql://localhost:3307";
        String user = "root";
        String password = "db12345";
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, "Error al conectar a MySQL", ex);
        }

        return connection;
    }

    // ejecutar scripts SQL (para structure.sql y data.sql)
    public static void ejecutarScript(Connection connection, String archivoSql) {
        try {
            String sql = leerArchivo(archivoSql);
            Statement statement = connection.createStatement();

            for (String linea : sql.split(";")) {
                if (!linea.trim().isEmpty()) {
                    statement.execute(linea);
                }
            }
            System.out.println("Script ejecutado correctamente: " + archivoSql);
        } catch (SQLException | IOException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, "Error al ejecutar el script: " + archivoSql, ex);
        }
    }

    // leer el archivo SQL y devolverlo como un String
    public static String leerArchivo(String rutaArchivo) throws IOException {
        StringBuilder contenido = new StringBuilder();
        try (BufferedReader br = new BufferedReader(new FileReader(rutaArchivo))) {
            String linea;
            while ((linea = br.readLine()) != null) {
                contenido.append(linea).append("\n");
            }
        }
        return contenido.toString();
    }

    // insertar los datos de la familia
    public static void insertarDatos(Connection connection) {
        Statement statement = null;
        try {
            statement = connection.createStatement();

            // Crear la tabla  si no existe
            String createTableSQL = "CREATE TABLE IF NOT EXISTS people ("
                    + "id INT AUTO_INCREMENT PRIMARY KEY, "
                    + "nombre VARCHAR(100), "
                    + "edad INT, "
                    + "relacion VARCHAR(100), "
                    + "padre_id INT, "
                    + "madre_id INT, "
                    + "FOREIGN KEY (padre_id) REFERENCES people(id), "
                    + "FOREIGN KEY (madre_id) REFERENCES people(id))";

            statement.execute(createTableSQL);

            // insertar los datos
            String insertSQL = "INSERT INTO people (nombre, edad, relacion, padre_id, madre_id) "
                    + "VALUES (?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(insertSQL)) {
                // miembros de la familia

                // Padre
                preparedStatement.setString(1, "Padre");
                preparedStatement.setInt(2, 50);
                preparedStatement.setString(3, "Padre");
                preparedStatement.setNull(4, java.sql.Types.INTEGER);
                preparedStatement.setNull(5, java.sql.Types.INTEGER);
                preparedStatement.addBatch();

                // madre
                preparedStatement.setString(1, "Madre");
                preparedStatement.setInt(2, 48);
                preparedStatement.setString(3, "Madre");
                preparedStatement.setNull(4, java.sql.Types.INTEGER);
                preparedStatement.setNull(5, java.sql.Types.INTEGER);
                preparedStatement.addBatch();

                // yo
                preparedStatement.setString(1, "Tú");
                preparedStatement.setInt(2, 25);
                preparedStatement.setString(3, "Hijo");
                preparedStatement.setInt(4, 1); // Padre id
                preparedStatement.setInt(5, 2); // Madre id
                preparedStatement.addBatch();

                // Hermano/a
                preparedStatement.setString(1, "Hermano");
                preparedStatement.setInt(2, 22);
                preparedStatement.setString(3, "Hermano");
                preparedStatement.setInt(4, 1); // Padre id
                preparedStatement.setInt(5, 2); // Madre id
                preparedStatement.addBatch();

                // Pareja/o
                preparedStatement.setString(1, "Pareja");
                preparedStatement.setInt(2, 24);
                preparedStatement.setString(3, "Pareja");
                preparedStatement.setInt(4, 1); // Padre id
                preparedStatement.setInt(5, 2); // Madre id
                preparedStatement.addBatch();

                // Hijo/a
                preparedStatement.setString(1, "Hijo");
                preparedStatement.setInt(2, 1);
                preparedStatement.setString(3, "Hijo");
                preparedStatement.setInt(4, 3); // Padre id
                preparedStatement.setInt(5, 4); // Madre id
                preparedStatement.addBatch();

                // Ejecutar todas las inserciones
                preparedStatement.executeBatch();

                System.out.println("Miembros de la familia insertados correctamente.");
            } catch (SQLException e) {
                System.out.println("Error al insertar los datos: " + e.getMessage());
                connection.rollback(); // Hacer rollback si ocurre un error
            }
        } catch (SQLException e) {
            System.out.println("Error al crear la tabla: " + e.getMessage());
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException e) {
                System.out.println("Error al cerrar el statement: " + e.getMessage());
            }
        }
    }

    // buscar por ID
    public static Integer buscarId(Connection connection, String nombreTabla, String nombreCampo, Object valorCampo) {
        Integer id = null;
        String query = "SELECT id FROM " + nombreTabla + " WHERE " + nombreCampo + " = ? LIMIT 1";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            // Establecer el valor del parámetro
            preparedStatement.setObject(1, valorCampo);

            // Ejecutar la consulta
            ResultSet resultSet = preparedStatement.executeQuery();

            // Si se encuentra el registro, obtener el id
            if (resultSet.next()) {
                id = resultSet.getInt("id");
            }
        } catch (SQLException e) {
            System.out.println("Error al buscar el ID: " + e.getMessage());
        }

        return id; // Si no se encuentra, se devolverá null
    }

    // Borrar registro por ID
    public static int borrarPeoplePorId(Connection connection, int id) {
        String query = "DELETE FROM people WHERE id = ?";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);

            return preparedStatement.executeUpdate(); //número de registros borrados
        } catch (SQLException ex) {
            System.out.println("Error al borrar el registro: " + ex.getMessage());
        }
        return 0; // si hay un error o no se borra nada, devuelve 0
    }


    public static void listarCasas(Connection connection) {
        String query = "SELECT name, symbol FROM houses ORDER BY name";

        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(query)) {

            // Recorrer los resultados y mostrar el nombre y símbolo de cada casa
            while (resultSet.next()) {
                String houseName = resultSet.getString("name");
                String symbol = resultSet.getString("symbol");
                System.out.println("Casa: " + houseName + " - " + symbol);
            }
        } catch (SQLException e) {
            System.out.println("Error al listar las casas: " + e.getMessage());
        }
    }

    public static void crearRegion(Connection connection, int id, int kingdom_id, String nombre, String clima, double extension) {
        String query = "INSERT INTO regions (id, kingdom_id, name, climate, stretch) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);           // id
            preparedStatement.setInt(2, kingdom_id);   // kingdom_id
            preparedStatement.setString(3, nombre);    // name
            preparedStatement.setString(4, clima);     // climate
            preparedStatement.setDouble(5, extension); // stretch

            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println("Región creada: " + nombre);
        } catch (SQLException e) {
            System.out.println("Error al crear la región: " + e.getMessage());
        }
    }

    // metodo para recorrer regiones

    public static void recorrerRegiones(Connection connection) {
        String query = "SELECT id, kingdom_id, name, climate, stretch FROM regions";

        try (Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
             ResultSet resultSet = statement.executeQuery(query)) {

            // Mover al final del ResultSet
            if (resultSet.last()) {
                // Modificar la extensión de la última región (doble)
                double nuevaExtension = resultSet.getDouble("stretch") * 2;
                int idRegion = resultSet.getInt("id");
                int kingdomId = resultSet.getInt("kingdom_id");
                String nombreRegion = resultSet.getString("name");
                String climaRegion = resultSet.getString("climate");

                System.out.println("Modificando región: " + nombreRegion + " - Nueva extensión: " + nuevaExtension);

                // Actualizar la región con la nueva extensión
                String updateQuery = "UPDATE regions SET stretch = ? WHERE id = ?";
                try (PreparedStatement updateStatement = connection.prepareStatement(updateQuery)) {
                    updateStatement.setDouble(1, nuevaExtension);
                    updateStatement.setInt(2, idRegion);
                    updateStatement.executeUpdate();
                }

                // Retroceder una posición
                if (resultSet.previous()) {
                    int idEliminar = resultSet.getInt("id");
                    String nombreEliminar = resultSet.getString("name");
                    System.out.println("Eliminando región: " + nombreEliminar);

                    // Eliminar la región
                    String deleteQuery = "DELETE FROM regions WHERE id = ?";
                    try (PreparedStatement deleteStatement = connection.prepareStatement(deleteQuery)) {
                        deleteStatement.setInt(1, idEliminar);
                        deleteStatement.executeUpdate();
                    }
                }


            }
        } catch (SQLException e) {
            System.out.println("Error al recorrer las regiones: " + e.getMessage());
        }
    }
    //  cerrar la conexión


    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Conexión cerrada.");
            } catch (SQLException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, "Error al cerrar la conexión", ex);
            }
        }
    }
}
