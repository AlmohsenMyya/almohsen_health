import '../../../core/app_export.dart';

/// This class is used in the [timeslots_item_widget] screen.
class TimeslotsItemModel {
  Rx<String>? timeOne = Rx("09:00 AM");

  Rx<bool>? isSelected = Rx(false);
}
