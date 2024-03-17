import 'widgets/chatlist_item_widget.dart';
import 'models/chatlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/message_controller.dart';
import 'models/message_model.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessagePage({Key? key}) : super(key: key);

  MessageController controller = Get.put(MessageController(MessageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [SizedBox(height: 31.v), _buildChatList()]))));
  }

  /// Section Widget
  Widget _buildChatList() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount:
                controller.messageModelObj.value.chatlistItemList.value.length,
            itemBuilder: (context, index) {
              ChatlistItemModel model = controller
                  .messageModelObj.value.chatlistItemList.value[index];
              return ChatlistItemWidget(model, onTapChat: () {
                onTapChat();
              });
            })));
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapChat() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
