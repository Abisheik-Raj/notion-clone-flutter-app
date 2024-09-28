import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "package:notion_app/firebase/auth_gate.dart";
import "package:notion_app/firebase/auth_methods.dart";
import "package:notion_app/firebase_options.dart";
import "package:provider/provider.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthMethods(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthGate(),
      ),
    );
  }
}
