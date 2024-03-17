import '../models/thirtylist_item_model.dart';
import '../controller/dashboard_controller.dart';
import 'package:almohsen_s_health/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class ThirtylistItemWidget extends StatelessWidget {
  ThirtylistItemWidget(
    this.thirtylistItemModelObj, {
    Key? key,
    this.onTapBtnTicket,
  }) : super(
          key: key,
        );

  ThirtylistItemModel thirtylistItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapBtnTicket;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: Obx(
        () => CustomIconButton(
          height: 71.adaptSize,
          width: 71.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillCyan,
          onTap: () {
            onTapBtnTicket!.call();
          },
          child: CustomImageView(
            imagePath: thirtylistItemModelObj.ticket!.value,
          ),
        ),
      ),
    );
  }
}
