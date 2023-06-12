import java.util.Scanner;

public class MyClassMateApp {
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Welcome to MyClassMate!");

        // Register Page
        System.out.println("Register Page");
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();
        System.out.print("Enter your email: ");
        String email = scanner.nextLine();
        System.out.print("Enter your mobile number: ");
        String mobileNumber = scanner.nextLine();

        // Perform validation
        if (!validateRegistration(name, email, mobileNumber)) {
            System.out.println("Invalid input. Registration failed.");
            return;
        }

        System.out.println("Registration successful. Welcome, " + name + "!");

        // Login Page
        System.out.println("Login Page");
        System.out.print("Enter your email: ");
        String loginEmail = scanner.nextLine();
        System.out.print("Enter your password: ");
        String password = scanner.nextLine();

        // Perform validation
        if (!validateLogin(loginEmail, password)) {
            System.out.println("Invalid email or password. Login failed.");
            return;
        }

        System.out.println("Login successful. Welcome back, " + loginEmail + "!");
    }

    private static boolean validateRegistration(String name, String email, String mobileNumber) {
        // Perform validation checks
        if (name.isEmpty() || email.isEmpty() || mobileNumber.isEmpty()) {
            return false;
        }

        // Validate email format
        if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
            return false;
        }

        // Validate mobile number format
        if (!mobileNumber.matches("\\d{10}")) {
            return false;
        }

        return true;
    }

    private static boolean validateLogin(String email, String password) {
        // Perform validation checks
        if (email.isEmpty() || password.isEmpty()) {
            return false;
        }

        // Validate email format
        if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
            return false;
        }

        // Add additional password validation logic if required

        return true;
    }
}