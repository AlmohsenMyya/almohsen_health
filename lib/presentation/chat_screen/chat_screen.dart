import 'package:almohsen_s_health/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_health/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_health/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/chat_controller.dart';

class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 42.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 3.v),
                      _buildConsultionStart(),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildDoctorDetails(
                              drMarcusHorizon: "msg_dr_marcus_horizon".tr,
                              time: "lbl_10_min_ago".tr)),
                      SizedBox(height: 10.v),
                      Container(
                          margin: EdgeInsets.only(left: 1.h, right: 129.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 7.v),
                          decoration: AppDecoration.fillTeal.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Text("msg_hello_how_can_i".tr,
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 98.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 7.v),
                              decoration: AppDecoration.fillTeal300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    SizedBox(
                                        width: 205.h,
                                        child: Text("msg_i_have_suffering".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumPrimary
                                                .copyWith(height: 1.50)))
                                  ]))),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildDoctorDetails(
                              drMarcusHorizon: "msg_dr_marcus_horizon".tr,
                              time: "lbl_5_min_ago".tr)),
                      SizedBox(height: 10.v),
                      Container(
                          margin: EdgeInsets.only(left: 1.h, right: 113.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 6.v),
                          decoration: AppDecoration.fillTeal.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                SizedBox(
                                    width: 193.h,
                                    child: Text("msg_ok_do_you_have".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.50)))
                              ])),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 237.h,
                              margin: EdgeInsets.only(left: 98.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 6.v),
                              decoration: AppDecoration.fillTeal300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    Container(
                                        width: 162.h,
                                        margin: EdgeInsets.only(right: 47.h),
                                        child: Text("msg_i_don_t_have_any".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumPrimary
                                                .copyWith(height: 1.50)))
                                  ]))),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildDoctorDetails(
                              drMarcusHorizon: "msg_dr_marcus_horizon".tr,
                              time: "lbl_online".tr)),
                      SizedBox(height: 10.v),
                      Container(
                          height: 22.v,
                          width: 58.h,
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 8.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL5),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup141,
                              height: 5.v,
                              width: 32.h,
                              alignment: Alignment.bottomCenter))
                    ])),
            bottomNavigationBar: _buildChatBox()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "msg_dr_marcus_horizon".tr,
            margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGroup266,
              margin: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildConsultionStart() {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 14.v),
        decoration: AppDecoration.outlineGray5001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("msg_consultion_start".tr,
              style: CustomTextStyles.titleMediumCyan300),
          SizedBox(height: 8.v),
          Text("msg_you_can_consult".tr, style: theme.textTheme.labelLarge)
        ]));
  }

  /// Section Widget
  Widget _buildChatBox() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 26.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomTextFormField(
                  width: 206.h,
                  controller: controller.messageController,
                  hintText: "msg_type_message".tr,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                      margin: EdgeInsets.fromLTRB(10.h, 11.v, 11.h, 10.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgAttach,
                          height: 28.adaptSize,
                          width: 28.adaptSize)),
                  prefixConstraints: BoxConstraints(maxHeight: 49.v))),
          CustomElevatedButton(
              width: 111.h,
              text: "lbl_send".tr,
              margin: EdgeInsets.only(left: 17.h),
              onPressed: () {
                onTapSend();
              })
        ]));
  }

  /// Common widget
  Widget _buildDoctorDetails({
    required String drMarcusHorizon,
    required String time,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse27image40x40,
          height: 40.adaptSize,
          width: 40.adaptSize,
          radius: BorderRadius.circular(20.h)),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(drMarcusHorizon,
                style: theme.textTheme.titleSmall!
                    .copyWith(color: theme.colorScheme.onPrimary)),
            SizedBox(height: 7.v),
            Text(time,
                style: theme.textTheme.labelMedium!
                    .copyWith(color: appTheme.gray500))
          ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSend() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
