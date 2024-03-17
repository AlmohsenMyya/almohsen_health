import 'package:almohsen_s_health/presentation/ambulance_screen/controller/ambulance_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AmbulanceScreen.
///
/// This class ensures that the AmbulanceController is created when the
/// AmbulanceScreen is first loaded.
class AmbulanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AmbulanceController());
  }
}
