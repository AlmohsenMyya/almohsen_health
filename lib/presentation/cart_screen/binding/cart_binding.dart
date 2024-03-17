import 'package:almohsen_s_health/presentation/cart_screen/controller/cart_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CartScreen.
///
/// This class ensures that the CartController is created when the
/// CartScreen is first loaded.
class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
