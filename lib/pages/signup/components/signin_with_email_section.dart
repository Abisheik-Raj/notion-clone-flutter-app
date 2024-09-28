// ignore_for_file: avoid_print

import "package:flutter/material.dart";
import "package:notion_app/firebase/auth_methods.dart";
import "package:notion_app/resources/colors.dart";
import "package:provider/provider.dart";

class SignInWithEmailSection extends StatefulWidget {
  Function toggleContinuePressed;
  SignInWithEmailSection({super.key, required this.toggleContinuePressed});

  @override
  State<SignInWithEmailSection> createState() => _SignInWithEmailSectionState();
}

class _SignInWithEmailSectionState extends State<SignInWithEmailSection> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            "Email",
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        TextField(
          controller: emailController,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "PoppinsSemiBold",
              fontSize: 12.5),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: greyColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: lightBlueColor),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            hintText: "Enter your email address",
            hintStyle: const TextStyle(
                color: lightGreyColor,
                fontFamily: "PoppinsSemiBold",
                fontSize: 12.5),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: greyColor),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: Text(
            "Password",
            style: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        TextField(
          controller: passwordController,
          obscureText: true,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "PoppinsSemiBold",
              fontSize: 12.5),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: greyColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: lightBlueColor),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            hintText: "Enter your password",
            hintStyle: const TextStyle(
                color: lightGreyColor,
                fontFamily: "PoppinsSemiBold",
                fontSize: 12.5),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: greyColor),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        GestureDetector(
          onTap: () async {
            widget.toggleContinuePressed(true);
            final AuthMethods authMethods =
                Provider.of<AuthMethods>(context, listen: false);
            try {
              await authMethods.create(
                  emailController.text, passwordController.text);
            } catch (err) {
              print("Error while trying to login:  ${err.toString()}");
            } finally {
              emailController.clear();
              passwordController.clear();
              widget.toggleContinuePressed(false);
            }
          },
          child: Container(
            width: screenSize.width * 1,
            padding: const EdgeInsets.symmetric(vertical: 7.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: lightBlueColor,
            ),
            child: const Center(
              child: Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "PoppinsRegular",
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
