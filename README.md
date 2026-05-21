# 🏋️ Gym_Manager_Pro

Gym_Manager_Pro es una aplicación desarrollada en Flutter enfocada en la administración y gestión de gimnasios.  
El proyecto implementa una arquitectura limpia (Clean Architecture) junto con Firebase y BLoC para mantener una estructura escalable, organizada y fácil de mantener.

---

# 📌 Características principales

- 🔐 Autenticación de usuarios
- 👥 Gestión de clientes
- 💳 Administración de membresías
- 💰 Registro de pagos
- 📅 Control de asistencias
- 🏋️ Gestión de rutinas
- 📊 Generación de reportes
- 📱 Interfaz moderna con Material Design

---

# 🛠️ Tecnologías utilizadas

- Flutter
- Dart
- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- BLoC Pattern
- Clean Architecture
- Material Design 3

---

# 📂 Arquitectura del proyecto

El proyecto está estructurado utilizando Clean Architecture:

```text
lib/
├── core/
├── data/
│   ├── datasources/
│   ├── models/
│   └── repositories/
├── domain/
│   ├── entities/
│   ├── services/
│   └── usecases/
└── presentation/
    ├── views/
    └── controllers_blocs/
# gym_manager_pro

A new Flutter project.
