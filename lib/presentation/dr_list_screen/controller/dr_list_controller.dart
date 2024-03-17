import '../../../core/app_export.dart';
import '../models/dr_list_model.dart';

/// A controller class for the DrListScreen.
///
/// This class manages the state of the DrListScreen, including the
/// current drListModelObj
class DrListController extends GetxController {
  Rx<DrListModel> drListModelObj = DrListModel().obs;
}
