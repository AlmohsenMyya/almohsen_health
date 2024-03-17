import '../../../core/app_export.dart';
import 'settings_item_model.dart';

/// This class defines the variables used in the [settings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsModel {
  Rx<List<SettingsItemModel>> settingsItemList = Rx([
    SettingsItemModel(
        heartrate: ImageConstant.imgTelevision.obs,
        heartRate1: "Heart rate".obs,
        heartRateCount: "215bpm".obs),
    SettingsItemModel(
        heartrate: ImageConstant.imgSettings.obs,
        heartRate1: "Calories".obs,
        heartRateCount: "756cal".obs),
    SettingsItemModel(
        heartrate: ImageConstant.imgThumbsUp.obs,
        heartRate1: "Weight".obs,
        heartRateCount: "103lbs".obs)
  ]);
}
