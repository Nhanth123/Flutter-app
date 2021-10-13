import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flashchatapp/screens/welcom_screen.dart';
import 'package:flashchatapp/screens/login_screen.dart';
import 'package:flashchatapp/screens/registration_screen.dart';
import 'package:flashchatapp/screens/chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
      ChatScreen.id: (context) => ChatScreen(),
    });
  }
}
