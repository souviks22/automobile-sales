import java.util.Scanner;

public class DBInterface {
    private final AutomobileSalesDB automobileSalesDB;

    public DBInterface() {
        automobileSalesDB = new AutomobileSalesDB();
    }

    public void simulate() {
        int choice = 0;
        Scanner scanner = new Scanner(System.in);
        do {
            System.out.println("1. Get Brands Table");
            System.out.println("2. Get Models Table");
            System.out.println("3. Get Suppliers Table");
            System.out.println("4. Get Vehicles Table");
            System.out.println("5. Get Dealers Table");
            System.out.println("6. Get Customers Table");
            System.out.println("7. Get Sales Table");
            System.out.print("\nWhat would you like to do ? choice - ");
            choice = scanner.nextInt();
            switch (choice) {
                case 0 -> System.out.println("Bye");
                case 1 -> automobileSalesDB.printBrands();
                case 2 -> automobileSalesDB.printModels();
                case 3 -> automobileSalesDB.printSuppliers();
                case 4 -> automobileSalesDB.printVehicles();
                case 5 -> automobileSalesDB.printDealers();
                case 6 -> automobileSalesDB.printCustomers();
                case 7 -> automobileSalesDB.printSales();
                default -> System.out.println("Please choice a valid option");
            }
        } while (choice != 0);
        scanner.close();
    }
}
