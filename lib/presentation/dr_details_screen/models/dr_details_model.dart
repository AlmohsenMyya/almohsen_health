import 'timeslots_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [dr_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DrDetailsModel {
  Rx<List<TimeslotsItemModel>> timeslotsItemList =
      Rx(List.generate(9, (index) => TimeslotsItemModel()));
}
