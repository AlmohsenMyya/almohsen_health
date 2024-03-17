import 'package:almohsen_s_health/presentation/drug_details_screen/controller/drug_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DrugDetailsScreen.
///
/// This class ensures that the DrugDetailsController is created when the
/// DrugDetailsScreen is first loaded.
class DrugDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrugDetailsController());
  }
}
