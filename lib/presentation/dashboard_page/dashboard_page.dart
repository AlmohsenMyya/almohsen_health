import 'package:almohsen_s_health/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_health/widgets/custom_search_view.dart';
import 'widgets/thirtylist_item_widget.dart';
import 'models/thirtylist_item_model.dart';
import 'package:almohsen_s_health/widgets/custom_elevated_button.dart';
import 'widgets/doctorlist_item_widget.dart';
import 'models/doctorlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_model.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              child: CustomSearchView(
                                  controller: controller.searchController,
                                  hintText: "msg_search_doctor_drugs".tr)),
                          SizedBox(height: 20.v),
                          _buildThirtyList(),
                          SizedBox(height: 20.v),
                          _buildOfferBanner(),
                          SizedBox(height: 42.v),
                          _buildTopDoctorSeeAll(),
                          SizedBox(height: 10.v),
                          _buildDoctorList(),
                          SizedBox(height: 31.v),
                          _buildHealthArticleSee(),
                          SizedBox(height: 12.v),
                          _buildArticleRow()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 90.v,
        title: AppbarTitle(
            text: "msg_find_your_desire".tr,
            margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUser,
              margin: EdgeInsets.fromLTRB(20.h, 14.v, 20.h, 31.v))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyList() {
    return SizedBox(
        height: 71.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 17.h);
            },
            itemCount: controller
                .dashboardModelObj.value.thirtylistItemList.value.length,
            itemBuilder: (context, index) {
              ThirtylistItemModel model = controller
                  .dashboardModelObj.value.thirtylistItemList.value[index];
              return ThirtylistItemWidget(model, onTapBtnTicket: () {
                onTapBtnTicket();
              });
            })));
  }

  /// Section Widget
  Widget _buildOfferBanner() {
    return Container(
        width: 335.h,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 12.v),
        decoration: AppDecoration.fillTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                  width: 168.h,
                  child: Text("msg_early_protection".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium18
                          .copyWith(height: 1.50))),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 26.v,
                  width: 106.h,
                  text: "lbl_learn_more".tr,
                  buttonStyle: CustomButtonStyles.fillCyan,
                  buttonTextStyle: CustomTextStyles.labelLargePrimarySemiBold)
            ]));
  }

  /// Section Widget
  Widget _buildTopDoctorSeeAll() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_top_doctor".tr, style: theme.textTheme.titleMedium),
              GestureDetector(
                  onTap: () {
                    onTapTxtSeeAll();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Text("lbl_see_all".tr,
                          style: CustomTextStyles.labelLargeCyan300)))
            ]));
  }

  /// Section Widget
  Widget _buildDoctorList() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 173.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 20.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 14.h);
                },
                itemCount: controller
                    .dashboardModelObj.value.doctorlistItemList.value.length,
                itemBuilder: (context, index) {
                  DoctorlistItemModel model = controller
                      .dashboardModelObj.value.doctorlistItemList.value[index];
                  return DoctorlistItemWidget(model, onTapDoctor: () {
                    onTapDoctor();
                  });
                }))));
  }

  /// Section Widget
  Widget _buildHealthArticleSee() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 23.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_healt_article".tr, style: theme.textTheme.titleMedium),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll1();
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text("lbl_see_all".tr,
                      style: CustomTextStyles.labelLargeCyan300)))
        ]));
  }

  /// Section Widget
  Widget _buildArticleRow() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgThumbnail,
                  height: 55.adaptSize,
                  width: 55.adaptSize,
                  radius: BorderRadius.circular(6.h)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h, bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 179.h,
                            child: Text("msg_the_25_healthiest".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelMediumOnPrimary
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 8.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_jun_10_2021".tr,
                                  style: theme.textTheme.labelSmall),
                              Container(
                                  height: 2.adaptSize,
                                  width: 2.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 5.h, top: 3.v, bottom: 4.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.gray500,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text("lbl_5min_read".tr,
                                      style: theme.textTheme.labelSmall))
                            ])
                      ]))
            ]));
  }

  /// Navigates to the drListScreen when the action is triggered.
  onTapBtnTicket() {
    Get.toNamed(
      AppRoutes.drListScreen,
    );
  }

  /// Navigates to the drListScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.drListScreen,
    );
  }

  /// Navigates to the drDetailsScreen when the action is triggered.
  onTapDoctor() {
    Get.toNamed(
      AppRoutes.drDetailsScreen,
    );
  }

  /// Navigates to the articleScreen when the action is triggered.
  onTapTxtSeeAll1() {
    Get.toNamed(
      AppRoutes.articleScreen,
    );
  }
}
