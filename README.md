# Quotes App 📜✨

A beautiful Flutter application that fetches inspirational quotes from an API and displays them in an elegant user interface. The app incorporates smooth navigation, attractive design, and modern Flutter practices.

---

## Features 🚀

- **Splash Screen**: 
  - An elegant gradient background with a built-in quote icon and a loading indicator while fetching data from the API.
  
- **Main Screen**:
  - Displays a list of quotes in a scrollable, card-based layout.
  - Tapping on a quote navigates to a detailed view.

- **Quote Screen**:
  - Shows the full quote with its author in a visually appealing format.

- **API Integration**:
  - Fetches quotes dynamically from the [ZenQuotes API](https://zenquotes.io/api).

---

## Tech Stack 💻

### **Frontend**
- **[Flutter](https://flutter.dev/)**: 
  - Framework for building the cross-platform application.
  - Widgets used: `MaterialApp`, `Scaffold`, `ListView.builder`, `GestureDetector`, `Card`, and more.

- **Built-in Flutter Icons**: 
  - Used `Icons.format_quote` for a professional look.

### **Backend (API)**:
- **[ZenQuotes API](https://zenquotes.io/api)**:
  - RESTful API providing inspirational quotes.

### **State Management**:
- **Stateless and Stateful Widgets**:
  - Used to handle navigation, UI updates, and API integration efficiently.

### **Networking**:
- **[HTTP Package](https://pub.dev/packages/http)**:
  - Used to fetch data from the API asynchronously.

### **UI/UX Design**:
- **Gradient Backgrounds**:
  - Smooth transitions between colors using `LinearGradient`.
- **Theming**:
  - Custom color schemes for AppBar, splash screen, and main app.
- **Cards**:
  - Material design cards to display quotes neatly.

---

## Folder Structure 🗂️

```plaintext
.
├── lib/
│   ├── main.dart           # Entry point of the app
│   ├── splash_screen.dart  # Splash screen with loading
│   ├── main_screen.dart    # Main screen showing quotes list
│   ├── qoute_screen.dart   # Quote detail screen
├── pubspec.yaml            # Project dependencies
├── images/                 # App icons and assets
└── README.md               # This README file
