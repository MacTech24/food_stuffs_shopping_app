import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:food_stuff_app/src/constants/images.dart';
import 'package:food_stuff_app/src/constants/string_text.dart';
import 'package:provider/provider.dart';

import '../../constants/colors.dart';
import '../../controller/form_provider.dart';
import '../main/main_screen.dart';
import '../signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(loginBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          final route = MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          );
                          Navigator.push(context, route);
                        },
                        child: Column(
                          children: [
                            Text(
                              signupTitle,
                              style:
                                  loginStyle(darkGreen, 22, FontWeight.bold, 0),
                            ),
                            Container(
                              height: 3,
                              width: 100,
                              color: darkGreen,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      appName,
                      style: appStyle(white, 45, FontWeight.bold, 0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Consumer<FormProvider>(
                      builder: (_, ref, __) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: darkGreen,
                                    width: 2,
                                  )),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                      onChanged: (value) {
                                        ref.validateEmail(value);
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email",
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: ref.suffixIconColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      ref.suffixIcon,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              ref.emailErrorText,
                              style: TextStyle(color: ref.emailErrorColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: darkGreen,
                                    width: 2,
                                  )),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      obscureText: ref.isPasswordVisible,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                      onChanged: (value) {
                                        ref.validatePassword(value);
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      ref.toggleVisibility();
                                    },
                                    icon: Icon(ref.isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              ref.passwordErrorText,
                              style: TextStyle(color: ref.passwordErrorColor),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  final route = MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                                  );
                                  Navigator.push(context, route);
                                },
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: newUser,
                                        style: loginStyle(
                                          black,
                                          14,
                                          FontWeight.w400,
                                          0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: signUp,
                                        style: loginStyle(Colors.blue, 14,
                                            FontWeight.bold, 0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: InkWell(
                                onTap: () {
                                  final route = MaterialPageRoute(
                                    builder: (context) => MainScreen(),
                                  );
                                  Navigator.push(context, route);
                                },
                                child: Container(
                                    color: ref.isValid
                                        ? darkGreen
                                        : darkGreen.withOpacity(0.5),
                                    child: Center(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "Sign In",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          )),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  color: white,
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          googleIcon,
                                          width: 20,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Sign In with Google",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: black,
                                              ),
                                            )),
                                      ],
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Align(
                                  alignment: Alignment.topCenter,
                                ),
                                Text(
                                  lastText,
                                  style: loginStyle(
                                    Colors.grey,
                                    15,
                                    FontWeight.normal,
                                    0,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: lastText2,
                                        style: loginStyle(
                                          Colors.grey,
                                          15,
                                          FontWeight.bold,
                                          0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " and ",
                                        style: loginStyle(
                                          Colors.grey,
                                          14,
                                          FontWeight.normal,
                                          0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: lastText3,
                                        style: loginStyle(
                                          Colors.grey,
                                          14,
                                          FontWeight.bold,
                                          0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
