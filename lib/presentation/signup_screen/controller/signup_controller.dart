import '../../../core/app_export.dart';
import '../models/signup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordController1.dispose();
  }
}
