import 'package:almohsen_s_health/presentation/chat_screen/controller/chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChatScreen.
///
/// This class ensures that the ChatController is created when the
/// ChatScreen is first loaded.
class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
