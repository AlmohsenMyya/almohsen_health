import '../../../core/app_export.dart';

/// This class is used in the [drugs1_item_widget] screen.
class Drugs1ItemModel {
  Drugs1ItemModel({
    this.oBHCombi,
    this.panadol,
    this.measurement,
    this.price,
    this.facebook,
    this.id,
  }) {
    oBHCombi = oBHCombi ?? Rx(ImageConstant.imgDrugThumbnail1);
    panadol = panadol ?? Rx("OBH Combi");
    measurement = measurement ?? Rx("75ml");
    price = price ?? Rx("9.99");
    facebook = facebook ?? Rx(ImageConstant.imgFacebookPrimary);
    id = id ?? Rx("");
  }

  Rx<String>? oBHCombi;

  Rx<String>? panadol;

  Rx<String>? measurement;

  Rx<String>? price;

  Rx<String>? facebook;

  Rx<String>? id;
}
