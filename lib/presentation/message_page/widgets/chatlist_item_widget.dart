import '../models/chatlist_item_model.dart';
import '../controller/message_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';

// ignore: must_be_immutable
class ChatlistItemWidget extends StatelessWidget {
  ChatlistItemWidget(
    this.chatlistItemModelObj, {
    Key? key,
    this.onTapChat,
  }) : super(
          key: key,
        );

  ChatlistItemModel chatlistItemModelObj;

  var controller = Get.find<MessageController>();

  VoidCallback? onTapChat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapChat!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: chatlistItemModelObj.drMarcusHorizon!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            chatlistItemModelObj.drMarcusHorizon1!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Obx(
                          () => Text(
                            chatlistItemModelObj.iDonTHaveAny!.value,
                            style: CustomTextStyles.bodySmallBluegray600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            chatlistItemModelObj.time!.value,
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 9.v,
                          width: 14.h,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
