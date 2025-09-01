# Bon Rewards UI - Flutter Assignment

This project is a single-screen Flutter application created as a solution for a UI assignment. The app displays a user reward notification and a carousel of mock payment history cards, showcasing a clean, responsive, and theme-adaptive design.

Demo Link - https://drive.google.com/file/d/17P0Zz339hDp0uoRclusSQeE5pU5nEJTU/view?usp=sharing

APK Link - https://drive.google.com/file/d/1dthbltq1SkuvvUZhYGXnqvjjTmDkrXyC/view?usp=sharing

## ✨ Features

* **Reward Notification**: A prominent, styled container announces that the user has unlocked a reward.
* **Call-to-Action**: An elegant "Choose Brand" button that simulates a navigation event using a `SnackBar`.
* **Payment History Carousel**: An auto-playing and infinitely scrolling carousel (`carousel_slider`) that displays mock credit card bills.
* **Dynamic Status UI**: Each bill card visually represents its status (**Completed**, **Failed**, **Pending**) with unique colors, icons, and text.
* **Adaptive Theming**: Full support for both **Light and Dark modes**, with a convenient toggle switch in the app bar. The entire UI color scheme adapts seamlessly.
* **State Management**: Utilizes `flutter_bloc` for robust theme state management.
* **Micro-interactions**: The carousel's smooth sliding animation provides an engaging user experience, fulfilling the bonus requirement.

***

## ✅ Assignment Task Checklist

The project successfully meets all the specified requirements:

-   [x] **Single Screen UI**: The entire interface is built within a single `HomeScreen`.
-   [x] **Reward Text**: Displays `"You've unlocked a $10 reward!"`.
-   [x] **"Choose Brand" Button**: A functional button is present to simulate navigation.
-   [x] **Mock Credit Card Bills**: A list of mock bills is displayed with amount, date, and status.
-   [x] **Frontend Only**: The app uses hardcoded mock data with no backend dependency.
-   [x] **Bonus Animation**: Implemented an auto-playing `CarouselSlider` for a subtle and effective animation.

***

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your machine. For installation guidance, see the [online documentation](https://docs.flutter.dev/).

### Installation & Execution

1.  **Clone the repository:**
    ```sh
    git clone [https://github.com/ThunderSpear21/bon_assignment_app.git](https://github.com/ThunderSpear21/bon_assignment_app.git)
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd bon_assignment_app
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the app:**
    ```sh
    flutter run
    ```

***


### Key Dependencies

* [**carousel\_slider**](https://pub.dev/packages/carousel_slider): For the animated payment history carousel.
* [**flutter\_bloc**](https://pub.dev/packages/flutter_bloc): For predictable state management of the application's theme.
