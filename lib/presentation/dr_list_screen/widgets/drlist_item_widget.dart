import '../models/drlist_item_model.dart';
import '../controller/dr_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class DrlistItemWidget extends StatelessWidget {
  DrlistItemWidget(
    this.drlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DrlistItemModel drlistItemModelObj;

  var controller = Get.find<DrListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: drlistItemModelObj.drMarcusHorizon!.value,
              height: 111.adaptSize,
              width: 111.adaptSize,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 7.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    drlistItemModelObj.title!.value,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    drlistItemModelObj.chardiologist!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Obx(
                          () => Text(
                            drlistItemModelObj.ratting!.value,
                            style: CustomTextStyles.labelLargeCyan300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 13.adaptSize,
                      width: 13.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Obx(
                        () => Text(
                          drlistItemModelObj.distance!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
