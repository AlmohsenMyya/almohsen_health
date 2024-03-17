import '../models/drugs1_item_model.dart';
import '../controller/pharmacy_controller.dart';
import 'package:almohsen_s_health/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class Drugs1ItemWidget extends StatelessWidget {
  Drugs1ItemWidget(
    this.drugs1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Drugs1ItemModel drugs1ItemModelObj;

  var controller = Get.find<PharmacyController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.v),
              Obx(
                () => CustomImageView(
                  imagePath: drugs1ItemModelObj.oBHCombi!.value,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Obx(
                  () => Text(
                    drugs1ItemModelObj.panadol!.value,
                    style: CustomTextStyles.labelLargeOnPrimaryContainer,
                  ),
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Obx(
                  () => Text(
                    drugs1ItemModelObj.measurement!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Obx(
                        () => Text(
                          drugs1ItemModelObj.price!.value,
                          style: CustomTextStyles.titleSmallOnPrimaryContainer,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 45.h),
                      child: Obx(
                        () => CustomIconButton(
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          child: CustomImageView(
                            imagePath: drugs1ItemModelObj.facebook!.value,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
