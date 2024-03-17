import '../models/settings_item_model.dart';
import '../controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget(
    this.settingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsItemModel settingsItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 63.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: settingsItemModelObj.heartrate!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              settingsItemModelObj.heartRate1!.value,
              style: CustomTextStyles.labelMediumCyan100,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              settingsItemModelObj.heartRateCount!.value,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
        ],
      ),
    );
  }
}
