import '../../../core/app_export.dart';
import '../models/ambulance_model.dart';

/// A controller class for the AmbulanceScreen.
///
/// This class manages the state of the AmbulanceScreen, including the
/// current ambulanceModelObj
class AmbulanceController extends GetxController {
  Rx<AmbulanceModel> ambulanceModelObj = AmbulanceModel().obs;
}
