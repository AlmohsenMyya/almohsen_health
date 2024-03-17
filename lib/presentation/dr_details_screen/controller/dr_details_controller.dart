import '../../../core/app_export.dart';
import '../models/dr_details_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

/// A controller class for the DrDetailsScreen.
///
/// This class manages the state of the DrDetailsScreen, including the
/// current drDetailsModelObj
class DrDetailsController extends GetxController {
  Rx<DrDetailsModel> drDetailsModelObj = DrDetailsModel().obs;

  Rx<DateTime> selectedDatesFromCalendar1 = DateTime.now().obs;
}
