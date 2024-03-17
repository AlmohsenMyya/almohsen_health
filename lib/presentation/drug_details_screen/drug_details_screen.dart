import 'package:almohsen_s_health/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_health/widgets/custom_rating_bar.dart';
import 'package:almohsen_s_health/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';
import 'package:almohsen_s_health/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/drug_details_controller.dart';

class DrugDetailsScreen extends GetWidget<DrugDetailsController> {
  const DrugDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgDrugImage,
                      height: 147.adaptSize,
                      width: 147.adaptSize,
                      radius: BorderRadius.circular(73.h)),
                  SizedBox(height: 65.v),
                  _buildDrugDetails(),
                  SizedBox(height: 41.v),
                  _buildDrugDescription(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBuyNow()));
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
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_drugs_details".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v),
              onTap: () {
                onTapCart();
              })
        ]);
  }

  /// Section Widget
  Widget _buildDrugDetails() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_obh_combi".tr, style: theme.textTheme.titleLarge),
          SizedBox(height: 7.v),
          Text("lbl_75ml".tr, style: CustomTextStyles.titleMediumGray500)
        ]),
        CustomImageView(
            imagePath: ImageConstant.imgFavoritePrimarycontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 25.v, bottom: 3.v))
      ]),
      SizedBox(height: 7.v),
      Row(children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: CustomRatingBar(initialRating: 0)),
        Padding(
            padding: EdgeInsets.only(left: 5.h),
            child:
                Text("lbl_4_0".tr, style: CustomTextStyles.titleSmallCyan300))
      ]),
      SizedBox(height: 29.v),
      Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgComponent3,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v)),
        Padding(
            padding: EdgeInsets.only(left: 23.h, bottom: 2.v),
            child: Text("lbl_1".tr, style: theme.textTheme.headlineSmall)),
        Padding(
            padding: EdgeInsets.only(left: 29.h, bottom: 2.v),
            child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebookPrimary))),
        Spacer(),
        Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text("lbl_9_99".tr, style: theme.textTheme.headlineSmall))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildDrugDescription() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_description".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 6.v),
          SizedBox(
              width: 331.h,
              child: ReadMoreText("msg_obh_combi_is_a".tr,
                  trimLines: 4,
                  colorClickableText: appTheme.cyan300,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "lbl_read_more".tr,
                  moreStyle: theme.textTheme.bodySmall!.copyWith(height: 1.50),
                  lessStyle: theme.textTheme.bodySmall!.copyWith(height: 1.50)))
        ]));
  }

  /// Section Widget
  Widget _buildBuyNow() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 28.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(imagePath: ImageConstant.imgCartCyan300)),
          Expanded(
              child: CustomElevatedButton(
                  text: "lbl_buy_now".tr,
                  margin: EdgeInsets.only(left: 19.h),
                  onPressed: () {
                    onTapBuyNow();
                  }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapCart() {
    Get.toNamed(
      AppRoutes.cartScreen,
    );
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapBuyNow() {
    Get.toNamed(
      AppRoutes.cartScreen,
    );
  }
}
