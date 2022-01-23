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
                color: Colors.green.shade800,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: Get.height * .66,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 12, 0, 24),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Text(
                                'Welcome back!',
                                style: TextStyle(
                                  color: Colors.green.shade800,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
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
                            ],
                          ),
                        ),
                      ),
                      // MyTextField(),
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
