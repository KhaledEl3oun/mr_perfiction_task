# Mr Perfiction Task

A Flutter task consisting of:
- Home Screen: displays a list of products
- Product Details Screen: shows selected product information

## 🚀 Features
- Bloc for state management
- Search functionality
- Error & loading handling
- Clean architecture
- Null safety
- API integration using Dio

---

## 🛠️ Setup Instructions

1. **Clone the repo:**
```bash
git clone https://github.com/KhaledEl3oun/mr_perfiction_task.git
cd mr_perfiction_task
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Run the project:**
```bash
flutter run
```

---

## 📂 Folder Structure
```
lib/
├── core/
│   ├── data/              # Models (e.g., product_model.dart)
│   ├── network/           # API helper using Dio
│   ├── routing/           # AppRouter for navigation
│   └── utils/             # Constants, extensions, colors, etc.
├── feature/
│   ├── home/
│   │   ├── logic/         # Cubit and States
│   │   └── ui/            # UI screens and widgets
│   └── details/
│       └── ui/            # Product details screen
```

---

## ✅ Best Practices
- Null safety enabled
- Proper separation of concerns
- Avoided deprecated packages
- Responsive layout using `flutter_screenutil`

---

## 💡 Notes
- All API data fetched from: `https://fakestoreapi.com/products`
- Search is applied in real-time by filtering the title
- Error handling shown using SnackBars

---

## 🔗 Author
**Khaled El3oun**
[GitHub Profile](https://github.com/KhaledEl3oun)


