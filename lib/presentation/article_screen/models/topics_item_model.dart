import '../../../core/app_export.dart';

/// This class is used in the [topics_item_widget] screen.
class TopicsItemModel {
  Rx<String>? covidNineteen = Rx("Covid-19");

  Rx<bool>? isSelected = Rx(false);
}
