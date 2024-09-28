import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:notion_app/pages/main/main_page.dart";
import "package:notion_app/pages/signup/signup_page.dart";

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const MainPage();
        } else {
          return const SignupPage();
        }
      },
    );
  }
}
