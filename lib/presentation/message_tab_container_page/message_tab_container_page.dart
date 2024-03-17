import 'package:almohsen_s_health/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_health/presentation/message_page/message_page.dart';
import 'package:almohsen_s_health/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/message_tab_container_controller.dart';
import 'models/message_tab_container_model.dart';

class MessageTabContainerPage extends StatelessWidget {
  MessageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  MessageTabContainerController controller =
      Get.put(MessageTabContainerController(MessageTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 46.v),
          child: Column(
            children: [
              _buildTabview(),
              SizedBox(
                height: 575.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MessagePage(),
                    MessagePage(),
                    MessagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      title: AppbarTitle(
        text: "lbl_messages".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        Container(
          height: 29.v,
          width: 20.h,
          margin: EdgeInsets.fromLTRB(14.h, 12.v, 14.h, 9.v),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRewind,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(bottom: 9.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgComponent1,
                height: 16.v,
                width: 4.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 13.v,
                  right: 6.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 46.v,
      width: 335.h,
      decoration: BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimary,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.cyan300,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_group".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_private".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 55,
      width: 55,
      backgroundColor: appTheme.cyan300,
      child: CustomImageView(
        imagePath: ImageConstant.imgUserPrimary,
        height: 27.5.v,
        width: 27.5.h,
      ),
    );
  }
}
