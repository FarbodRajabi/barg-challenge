import 'package:barg/views/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              Container(
                height: Get.height * .4,
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade800.withOpacity(.76),
                      Colors.green.shade800
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: Get.height * .66,
                  width: Get.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 24),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              MyTextField(
                                hint: 'Username',
                                isPassword: false,
                                controller: userNameController,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 4) {
                                    return 'Provide a valid username';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              MyTextField(
                                hint: 'password',
                                isPassword: false,
                                controller: userNameController,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 4) {
                                    return 'Provide a valid username';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (_) {},
                                    shape: const CircleBorder(),
                                    checkColor: Colors.white,
                                    side: BorderSide(
                                      color: Colors.green.shade800,
                                      width: 2,
                                    ),
                                  ),
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: Get.height * .06,
                            width: Get.width,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.green.shade800),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(32),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                GestureDetector(
                                  child: const Text(
                                    ' Register',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
