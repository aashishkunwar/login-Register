import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void login() {
    var isValid = formKey.currentState!.validate();
    if (isValid) {
       Get.snackbar("Success", "Login Success");
    } else {
      Get.snackbar("Error", "Fields are not valid");
    }
  }
}
