import '../models/topics_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class TopicsItemWidget extends StatelessWidget {
  TopicsItemWidget(
    this.topicsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TopicsItemModel topicsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 16.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          topicsItemModelObj.covidNineteen!.value,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        selected: (topicsItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.cyan300,
        selectedColor: appTheme.cyan300,
        shape: (topicsItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          topicsItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
