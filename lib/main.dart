import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/LoginScreen.dart';
import 'screens/home_screen.dart';

List<Map<String, String>> fakeUsersDB = [];

bool registerUser(String name, String email, String password) {
  final existingUser = fakeUsersDB.firstWhere(
        (user) => user['email'] == email,
    orElse: () => {},
  );
  if (existingUser.isNotEmpty) {
    return false;
  } else {
    fakeUsersDB.add({
      'name': name,
      'email': email,
      'password': password,
    });
    return true;
  }
}

bool loginUser(String email, String password) {
  final user = fakeUsersDB.firstWhere(
        (user) => user['email'] == email && user['password'] == password,
    orElse: () => {},
  );
  return user.isNotEmpty;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Max Pelis',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/auth': (context) => AuthScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
