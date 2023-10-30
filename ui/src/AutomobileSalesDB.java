import com.souvik.db.DBTablePrinter;

import java.sql.Connection;
import java.sql.DriverManager;

public class AutomobileSalesDB {
    private Connection connection;

    public AutomobileSalesDB() {
        String url = "jdbc:mysql://localhost:3306/automobile_sales";
        String user = "root";
        String password = "Ty6_u+mE69@h";
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void printBrands() {
        DBTablePrinter.printTable(connection, "brands");
    }

    public void printModels() {
        DBTablePrinter.printTable(connection, "models");
    }

    public void printSuppliers() {
        DBTablePrinter.printTable(connection, "suppliers");
    }

    public void printVehicles() {
        DBTablePrinter.printTable(connection, "vehicles");
    }

    public void printDealers() {
        DBTablePrinter.printTable(connection, "dealers");
    }

    public void printCustomers() {
        DBTablePrinter.printTable(connection, "customers");
    }

    public void printSales() {
        DBTablePrinter.printTable(connection, "sales");
    }

}
