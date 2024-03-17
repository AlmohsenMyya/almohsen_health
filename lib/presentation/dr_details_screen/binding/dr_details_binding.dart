import 'package:almohsen_s_health/presentation/dr_details_screen/controller/dr_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DrDetailsScreen.
///
/// This class ensures that the DrDetailsController is created when the
/// DrDetailsScreen is first loaded.
class DrDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrDetailsController());
  }
}
