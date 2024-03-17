import 'package:almohsen_s_health/widgets/custom_outlined_button.dart';
import 'package:almohsen_s_health/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.cyan300,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 46.v),
                child: Column(children: [
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgHiDocLogo,
                      height: 368.v,
                      width: 338.h),
                  SizedBox(height: 87.v),
                  CustomOutlinedButton(
                      text: "lbl_login".tr,
                      margin: EdgeInsets.only(right: 6.h),
                      onPressed: () {
                        onTapLogin();
                      }),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      text: "lbl_sign_up".tr,
                      margin: EdgeInsets.only(right: 6.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleSmallTeal300,
                      onPressed: () {
                        onTapSignUp();
                      })
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
