import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

import '../../../global variables/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ConstantColors.gradientColor2,
            ConstantColors.gradientColor3,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Image(
                  width: 65,
                  height: 65,
                  image: AssetImage("images/splashlogo.png"),
                ),
                SizedBox(
                  height: ConstDimensions.kHeight,
                ),
                Text(
                  "Connex",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: ConstantColors.kWhite),
                ),
              ],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: "username",
                            filled: true,
                            fillColor: ConstantColors.kWhite),
                      ),
                    ),
                    const SizedBox(
                      height: ConstDimensions.kHeight20,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: "email",
                            filled: true,
                            fillColor: ConstantColors.kWhite),
                      ),
                    ),
                    const SizedBox(
                      height: ConstDimensions.kHeight20,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "password",
                          filled: true,
                          fillColor: ConstantColors.kWhite,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: ConstDimensions.kHeight20,
                    ),
                    SizedBox(
                      width: 90,
                      height: 40,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ConstantColors.kWhite),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/homemain',
                          );
                        },
                        child: const Text(
                          "Signup",
                          style: TextStyle(color: ConstantColors.kBlack),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: ConstDimensions.kHeight20,
                    ),
                    SizedBox(
                      width: 90,
                      height: 40,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              ConstantColors.kWhite),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: ConstantColors.kBlack),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
