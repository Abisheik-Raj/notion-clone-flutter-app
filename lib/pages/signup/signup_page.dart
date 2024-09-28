import "package:flutter/material.dart";
import "package:notion_app/pages/signup/components/signin_with_email_section.dart";
import "package:notion_app/resources/colors.dart";

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool continueWithEmailToggle = true;
  bool continuePressed = false;

  void toggleContinuePressed(value) {
    setState(() {
      continuePressed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              continuePressed
                  ? const LinearProgressIndicator(
                      minHeight: 1.5,
                      color: lightBlueColor,
                      backgroundColor: backgroundColor,
                    )
                  : Container(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Image(
                      width: 45,
                      height: 45,
                      color: Colors.white,
                      image: AssetImage(
                        "assets/images/icon.png",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Think it. Make it.",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PoppinsBold",
                        fontSize: 23.5,
                      ),
                    ),
                    const Text(
                      "Log in to your Account",
                      style: TextStyle(
                        color: lightGreyColor,
                        fontFamily: "PoppinsSemibold",
                        fontSize: 21,
                      ),
                    ),
                    Image(
                      width: screenSize.width * 1,
                      height: screenSize.height * 0.35,
                      image: const AssetImage(
                        "assets/images/signuppage_image.png",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          continueWithEmailToggle = !continueWithEmailToggle;
                        });
                      },
                      child: Container(
                        width: screenSize.width * 1,
                        padding: const EdgeInsets.symmetric(vertical: 7.5),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor, width: 1.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Continue with email",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "PoppinsRegular",
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    continueWithEmailToggle
                        ? SignInWithEmailSection(
                            toggleContinuePressed: toggleContinuePressed,
                          )
                        : Container(),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "By continuing, you acknowledge that you understand and agree to the Terms & conditions and Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: lightGreyColor,
                          fontFamily: "PoppinsRegular",
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
