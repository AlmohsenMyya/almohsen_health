import 'package:almohsen_s_health/core/utils/validation_functions.dart';
import 'package:almohsen_s_health/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_health/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/signup_controller.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.cyan300,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 35.v),
                            child: Column(children: [
                              SizedBox(height: 70.v),
                              _buildPageTitle(),
                              SizedBox(height: 29.v),
                              _buildFullName(),
                              SizedBox(height: 8.v),
                              _buildEmail(),
                              SizedBox(height: 8.v),
                              _buildPassword(),
                              SizedBox(height: 8.v),
                              _buildPassword1(),
                              SizedBox(height: 39.v),
                              _buildSignUp(),
                              Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtHaveanaccount();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_have_an_account2".tr,
                                            style: CustomTextStyles
                                                .bodySmallffffffff),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: CustomTextStyles
                                                .labelLargeffffffff)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])))))));
  }

  /// Section Widget
  Widget _buildPageTitle() {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgHiDocLogo42x115,
          height: 42.v,
          width: 115.h),
      SizedBox(height: 27.v),
      Text("msg_let_s_get_started".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer),
      SizedBox(height: 10.v),
      Text("msg_create_an_new_account".tr,
          style: CustomTextStyles.labelLargeGray50)
    ]);
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: controller.fullNameController,
        hintText: "lbl_full_name".tr,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_your_email".tr,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSystemIcon,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildPassword1() {
    return CustomTextFormField(
        controller: controller.passwordController1,
        hintText: "lbl_password_again".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 12.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 48.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleSmallTeal300);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtHaveanaccount() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
