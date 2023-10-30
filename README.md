# Automobile Sales Database
## Get Started
The project implements the semantics of a typical automobile company aiming to simplify the retrieval of sales data. One thing is worth to mention that all the data used here are completely imaginary. Here are the steps for you.
1. Set up a MySQL environment where you can run SQL files. It may be remote setup like [Goorm IDE](https://accounts.goorm.io/signup) or locally installed in your machine from [MySQL Official Site](https://www.mysql.com/downloads/)
2. Firstly, to create the database get into `src/` directory and run `initials.sql` file.
3. Then to implement the the relations run the following files in order `brands.sql`, `models.sql`, `suppliers.sql`, `vehicles.sql`, `dealers.sql`, `customers.sql` and `sales.sql`
## Queries
To check sample queries run the `queries.sql` file that shows a few insightful data regarding the context. 
## Design
There are two major supportive documents inside `er/` directory to understand the core design of the database. One is Entity-Relationship Diagram that shows the corresponding attributes of entities and relationships between them. Another is Relational Schema Design which depicts the representation of primary keys and foreign keys.
## User Interface
I used Java Database Connectivity (JDBC) to build a command line interface by which we can easily interact with the database. Make sure the MySQL database is locally running to use the interface, otherwise few code segments need to be changed. Here are the directions to run the interface.
1. You need to install [Java](https://www.oracle.com/in/java/technologies/downloads/) on your local system and a Java IDE most likely [IntelliJ IDEA](https://www.jetbrains.com/idea/download/?section=windows)
2. Make sure you have the MySQL JDBC driver available in `lib/` in your classpath. Get more detailed instructions [here](https://stackoverflow.com/questions/854264/how-to-add-directory-to-classpath-in-an-application-run-profile-in-intellij-idea).
3. Change your username and password in `ui/src/AutomobileSalesDB.java` at line `12` to access the database content.
4. Now run the `main` method in `Main.java`. Now the interface is ready for usage.
## Version Control
The project is available on [GitHub](https://github.com/souviks22/automobile-sales.git) and you are welcome to suggest any improvements.
