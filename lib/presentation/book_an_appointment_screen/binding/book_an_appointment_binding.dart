import 'package:almohsen_s_health/presentation/book_an_appointment_screen/controller/book_an_appointment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookAnAppointmentScreen.
///
/// This class ensures that the BookAnAppointmentController is created when the
/// BookAnAppointmentScreen is first loaded.
class BookAnAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookAnAppointmentController());
  }
}
