import 'package:cinema_app/core/constant/fonts/fontsstyle.dart';
import 'package:cinema_app/features/auth/presentation/views/forgetpassword_screen.dart';
import 'package:cinema_app/features/auth/presentation/views/signup_screen.dart';
import 'package:cinema_app/features/home/presentation/views/main_screen.dart';
import 'package:cinema_app/features/auth/presentation/views/widgets/coustomtextbottom.dart';
import 'package:cinema_app/features/auth/presentation/views/widgets/loginsocial.dart';
import 'package:cinema_app/core/utlies/textfield.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  LoginBody({
    super.key,
  });
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff05041f),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Login",
                      style: textStyle(Colors.white, 30, FontWeight.bold)),
                  const SizedBox(
                    height: 20,
                  ),
                  Textfield(
                    controller: email,
                    isshow: true,
                    labeltext: 'Email Address',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Textfield(
                    controller: password,
                    isshow: false,
                    labeltext: 'Password',
                    icon: Icons.visibility_off_outlined,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10, left: 250),
                      child: InkWell(
                        splashColor: Colors.white60,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ForgetpasswordScreen();
                          }));
                        },
                        child: Container(
                          child: Text(
                            "Forget Password?",
                            style: textStyle(Colors.white, 15, FontWeight.bold),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextBottom(
                    text: 'Login',
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MainScreen();
                      }));
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 1,
                          width: 150,
                          color: Colors.white38,
                          margin: const EdgeInsets.only(left: 10)),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "or",
                        style: textStyle(Colors.white, 15, FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 1,
                          width: 150,
                          color: Colors.white38,
                          margin: const EdgeInsets.only(right: 10)),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginSocialmedia(
                          color: Colors.white30,
                          image: "assets/svg/google.svg",
                          text: 'Google',
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        LoginSocialmedia(
                          image: "assets/svg/facebook.svg",
                          text: "Facebook",
                          color: Colors.white30,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have account? ",
                        style: textStyle(Colors.white, 15, FontWeight.normal),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignupScreen();
                        })),
                        child: Text(
                          "Sign Up ",
                          style: textStyle(Colors.white, 18, FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
