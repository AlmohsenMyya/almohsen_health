import '../../../core/app_export.dart';

/// This class is used in the [drugslist_item_widget] screen.
class DrugslistItemModel {
  DrugslistItemModel({
    this.oBHCombi,
    this.oBHCombi1,
    this.measurement,
    this.counter,
    this.price,
    this.id,
  }) {
    oBHCombi = oBHCombi ?? Rx(ImageConstant.imgDrugThumbnail72x72);
    oBHCombi1 = oBHCombi1 ?? Rx("OBH Combi");
    measurement = measurement ?? Rx("75ml");
    counter = counter ?? Rx("1");
    price = price ?? Rx("9.99");
    id = id ?? Rx("");
  }

  Rx<String>? oBHCombi;

  Rx<String>? oBHCombi1;

  Rx<String>? measurement;

  Rx<String>? counter;

  Rx<String>? price;

  Rx<String>? id;
}
