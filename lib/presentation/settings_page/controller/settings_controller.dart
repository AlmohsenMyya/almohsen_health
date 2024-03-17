import '../../../core/app_export.dart';
import '../models/settings_model.dart';

/// A controller class for the SettingsPage.
///
/// This class manages the state of the SettingsPage, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  SettingsController(this.settingsModelObj);

  Rx<SettingsModel> settingsModelObj;
}
