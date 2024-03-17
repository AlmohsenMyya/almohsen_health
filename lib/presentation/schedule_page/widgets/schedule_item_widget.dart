import '../models/schedule_item_model.dart';
import '../controller/schedule_controller.dart';
import 'package:almohsen_s_health/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(
    this.scheduleItemModelObj, {
    Key? key,
    this.onTapCancelButton,
    this.onTapRescheduleButton,
  }) : super(
          key: key,
        );

  ScheduleItemModel scheduleItemModelObj;

  var controller = Get.find<ScheduleController>();

  VoidCallback? onTapCancelButton;

  VoidCallback? onTapRescheduleButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          scheduleItemModelObj.drMarcusHorizon!.value,
                          style: CustomTextStyles.titleMedium18,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Obx(
                        () => Text(
                          scheduleItemModelObj.chardiologist!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: scheduleItemModelObj.drMarcusHorizon1!.value,
                    height: 46.adaptSize,
                    width: 46.adaptSize,
                    radius: BorderRadius.circular(
                      23.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 45.h),
            child: Row(
              children: [
                SizedBox(
                  width: 86.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendarOnprimary,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Obx(
                          () => Text(
                            scheduleItemModelObj.date!.value,
                            style: CustomTextStyles.labelLargeOnPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(left: 15.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Obx(
                    () => Text(
                      scheduleItemModelObj.time!.value,
                      style: CustomTextStyles.labelLargeOnPrimary,
                    ),
                  ),
                ),
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Obx(
                    () => Text(
                      scheduleItemModelObj.confirmed!.value,
                      style: CustomTextStyles.labelLargeOnPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCancelButton(),
              _buildRescheduleButton(),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_cancel".tr,
        margin: EdgeInsets.only(right: 7.h),
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleSmallBold,
        onPressed: () {
          onTapCancelButton!.call();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRescheduleButton() {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_reschedule".tr,
        margin: EdgeInsets.only(left: 7.h),
        onPressed: () {
          onTapRescheduleButton!.call();
        },
      ),
    );
  }
}
