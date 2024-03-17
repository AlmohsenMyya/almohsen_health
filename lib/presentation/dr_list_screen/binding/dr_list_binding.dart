import 'package:almohsen_s_health/presentation/dr_list_screen/controller/dr_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DrListScreen.
///
/// This class ensures that the DrListController is created when the
/// DrListScreen is first loaded.
class DrListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrListController());
  }
}
