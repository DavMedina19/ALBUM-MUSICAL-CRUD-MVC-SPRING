package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class ConexionBD {

    public DriverManagerDataSource Conectar() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/albummusicalcrud");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }
}
