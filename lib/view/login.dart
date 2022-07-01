import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_consulttancy/controller/api_controller.dart';
import 'package:medical_consulttancy/controller/login_controller.dart';
import 'package:medical_consulttancy/utils/utility.dart';
import 'package:medical_consulttancy/view/sign_up.dart';

import '../models/test.dart';

/*
class LoginPage extends StatefulWidget {
   const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
*/
class LoginPage extends GetView<LoginController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    emailController.text='mj@sambinfo.in';
    passwordController.text='1234567890';

    print('page refresh');
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/app_icon.jpg',
                  height: 100,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: Utility.inputFormField(
                      'enter email',
                      const Icon(
                        Icons.email,
                        color: Colors.grey,
                      )),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    if (value == null) {
                      return "Please enter email address";
                    } else if (!Utility.isValidEmail(value)) {
                      return "Please enter email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => TextFormField(
                    controller: passwordController,
                    obscureText: controller.isObscurePassword.value,
                      obscuringCharacter:'*',
                    decoration: InputDecoration(
                        hintText: 'hint',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(controller.isObscurePassword.value
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            controller.toggleObscurePassword();
                          },
                        )),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter password";
                      } else if (value.length < 10) {
                        return "Please enter password with at least 10 characters";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                      onPressed: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        await controller.login(context, emailController.text,passwordController.text);
                      },
                      child: Text('Login')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Reset')),
                ]),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpPage(
                                title: 'Hello',
                              )));
                    },
                    child: Text(
                      'Create new Account',
                      style: Utility.clickableText(),
                    ))
              ],
            ),
          )),
    )));
  }
}
