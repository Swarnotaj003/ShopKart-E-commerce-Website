# ShopKart : E-commerce Website

## About 💬
This is a simple e-commerce website implemented using the `Spring Boot` framework in Java, by a group of five members, namely `Spring Spartans`. This group project is assigned under `Information Processing for Web` in 5th semester of BTech (IT), `University of Calcutta`

## Project Status 🚩
![Status](https://img.shields.io/badge/Status-Awaiting%20deployment-purple)

![Version](https://img.shields.io/badge/Version%20no.-v1.0-blue)  ![Type](https://img.shields.io/badge/Version%20type-Beta-ffc107)  ![Commit No.](https://img.shields.io/badge/Released%20on-Commit%20no.%2075-orange) 

![Version](https://img.shields.io/badge/Version%20no.-v2.0-blue)  ![Type](https://img.shields.io/badge/Version%20type-Stable-005f00)  ![Commit No.](https://img.shields.io/badge/Released%20on-Commit%20no.%2012X-orange) 

## Tech Stack 👨‍💻
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=flat&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?style=flat-square&logo=spring&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-FFB800?style=flat-square&logo=java&logoColor=white)
![CSS](https://img.shields.io/badge/CSS-1572B6?style=flat-square&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=flat&logo=javascript&logoColor=%23F7DF1E)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=flat-square&logo=apache-maven&logoColor=white)
---

## Key Features 🌟
1. `Customer Management` - Login, Sign Up, View & Update Profile
2. `Product Catalog` - Display of products, Search by name, Filter by category
3. `Shopping Cart` - Add products to cart, Increase & decrease quantity
4. `Order Management*` - Place orders from cart, Buy again, Cancel orders, Detailed order list & summary
5. `Admin Dashboard` - Login (with a security key), Sales insight through analytics, Add or update products, View customers, Update orders

> \* This project is purely made for educational purpose and not meant to be deployed for production. It assumes that payments are made instantly on placing orders as this project is not integrated with a payment gateway.
---

## Summary of Endpoints 📝

| Endpoint                              | View Rendered                      |
|---------------------------------------|------------------------------------|
| `/`                                   | Login page for customer            |
| `/signup`                             | Sign-up page for customer          |
| `/update`                             | Form to update customer profile    |
| `/product`                            | Product Catalogue                  |
| `/product/category/{category}`        | Filter products by category        |
| `/product/search?prefix={prefix}`     | Search results for products by name|
| `/product/{id}`                       | Product details                    |
| `/cartitem/cart`                      | Customer's cart                    |
| `/order/history`                      | Customer's order history/list      |
| `/order/summary/{id}`                 | Summary of order placed            |
| `/admin`                              | Login page for Admin               |
| `/admin/dashboard`                    | Admin Dashboard                    |
---

## Prerequisites 🛠️
Before you begin, ensure that you have met the following requirements:
- **Java Development Kit (JDK)**: Download from [Oracle's official website](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html) or use [OpenJDK](https://openjdk.java.net/install/).
- **Maven**: Download from [Maven's official website](https://maven.apache.org/download.cgi).
- **MySQL**: Download from [MySQL's official website](https://dev.mysql.com/downloads/mysql/).
- **IDE**: An Integrated Development Environment (IDE) such as `IntelliJ IDEA` or `Eclipse IDE`.
- **STS Plugin (If you're using Eclipse)**: [Install STS Plugin](https://marketplace.eclipse.org/content/spring-tools-4-aka-spring-tool-suite-4).
---

## Cloning the Repository 📥
To clone the repository, follow these steps:
1. Open your terminal (Command Prompt, PowerShell, or any terminal emulator).
2. Navigate to the directory where you want to clone the project.
3. Run the following command:
   
   ```bash
   git clone https://github.com/Swarnotaj003/ShopKart-E-commerce-Website.git
   ```
   
4. Navigate into the project directory:
   
   ```bash
   cd ShopKart-E-commerce-Website
   ```
   
5. **Setup your Database**: Open MySQL Command Line Client or Workbench and create a new database for the project.
   
    ```sql
    DROP DATABASE IF EXISTS shopkart;
    CREATE DATABASE shopkart;
    ```
    >**Note**: You may follow this step anytime to reset your database
    
6. **Configure Database Connection Settings**: Open the [`application.properties`](src/main/resources/application.properties) file & update the database connection settings.
   
    ```properties
    # Database connection settings
    spring.datasource.url=jdbc:mysql://localhost:3306/shopkart
    spring.datasource.username=<your_mysql_username>
    spring.datasource.password=<your_mysql_password>
    ```
    Replace your_mysql_username and your_mysql_password with your MySQL credentials.
    
7. **Setup your Project Path**: Open the [`application.properties`](src/main/resources/application.properties) file & update the project path.
   
   ```properties
   # Settings for uploading files
   spring.servlet.multipart.enabled=true
   file.project-path=<your_project_path>
   file.image-path=src\\main\\resources\\static\\images
   ```
---

## Executing the Project 💻

### Using Maven Wrapper 
The Maven Wrapper allows you to run Maven commands without needing to install Maven on your machine. Follow these steps to run the Spring Boot application using the Maven Wrapper:
1. **Open your terminal**: Make sure you have your terminal (Command Prompt, PowerShell, or any terminal emulator) open.
2. **Navigate to the project directory**: If you are not already in the project directory, use the `cd` command to navigate to it. For example:
   
   ```bash
   cd path/to/your/ShopKart-E-commerce-Website
   ```
   
3. **Run the application using the Maven Wrapper**: Use the following command to build and start the application:
   
    ```bash
    ./mvnw spring-boot:run
    ```
    On Windows, use:
    ```bash
    mvnw spring-boot:run
    ```
    
4. Wait for the application to start. You should see output in the terminal indicating that the application is running, along with the port number (default is 8080).
5. Once the application starts, open your web browser and navigate to:
   
     ```
     http://localhost:8080
     ```
     
### Using an IDE 
You can also run the Spring Boot application directly from your IDE. Follow these steps based on your preferred IDE:
1. Launch the IDE & import the project.
2. Locate the main application class named [`ShopkartApplication.java`](src/main/java/com/springspartans/shopkart/ShopkartApplication.java) in the `src/main/java` directory.
   - Right-click on the main class file and select `Run As` > `Spring Boot Application`.
3. Once the application starts, open your web browser and navigate to:
   
     ```
     http://localhost:8080
     ```
     
