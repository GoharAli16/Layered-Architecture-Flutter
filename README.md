

# Layered Architecture in Flutter

This repository demonstrates how to implement **Layered Architecture** in a Flutter application. The architecture separates the application into layers to ensure modularity, scalability, and ease of maintenance. This structure adheres to clean coding principles, making it a great starting point for building robust Flutter applications.

---

### Project Structure:
1. **Core**  
   - Contains global resources such as constants, dependency injection (`service_locator.dart`), routing (`app_routes.dart`), and theme configuration.

2. **Data Layer**  
   - **Datasources**: Handles the data retrieval from various sources (e.g., mock data, APIs, databases).  
     Example: `mock_order_data.dart`  
   - **Repositories**: Implements data fetching logic and bridges the data sources with the domain layer.  
     Example: `order_repository.dart`

3. **Domain Layer**  
   - **Entities**: Core application models that are independent of the UI.  
     Example: `order.dart`  
   - **Repositories (Abstract)**: Interfaces that define the contract for data access logic.  
     Example: `i_order_repository.dart`

4. **Presentation Layer**  
   - **Cubits**: Manages the state of the application using Cubit architecture (e.g., navigation, rating).  
     Example: `navigation_cubit.dart`, `rating_cubit.dart`  
   - **Screens**: Contains UI widgets and screen layouts organized by features.  
     Example: `rating_page.dart`, `order_details.dart`  
   - **Widgets**: Reusable UI components such as buttons and navigation bars.  
     Example: `app_button.dart`, `custom_bottom_nav_bar.dart`

5. **Generated**  
   - Contains auto-generated files (e.g., localization, assets, etc.).  

---

### Key Features:
- Demonstrates **Clean Architecture** principles.
- State management using **Cubit** (from the Bloc library).
- Mock data integration to simulate real-world use cases.
- Modular and reusable widget structure.
- Dependency injection with a `Service Locator`.

---

### How to Run:
1. Clone this repository:
   ```bash
   git clone <repo-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd layered_architecture_flutter_demo
   ```
3. Install the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

---

### Goals:
- Provide a reference implementation of **Layered Architecture** in Flutter.
- Showcase state management with **Cubit** and clean separation of concerns.
- Serve as a foundation for scaling Flutter projects.

---

### Contribution:
Contributions are welcome! If you have suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

---

### License:
This project is licensed under the [MIT License](LICENSE).

--- 

