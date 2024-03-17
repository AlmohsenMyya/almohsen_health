import '../../../core/app_export.dart';

/// This class is used in the [drugs_item_widget] screen.
class DrugsItemModel {
  DrugsItemModel({
    this.panadol,
    this.panadol1,
    this.quantiity,
    this.price,
    this.facebook,
    this.id,
  }) {
    panadol = panadol ?? Rx(ImageConstant.imgDrugThumbnail);
    panadol1 = panadol1 ?? Rx("Panadol");
    quantiity = quantiity ?? Rx("20pcs");
    price = price ?? Rx("15.99");
    facebook = facebook ?? Rx(ImageConstant.imgFacebookPrimary);
    id = id ?? Rx("");
  }

  Rx<String>? panadol;

  Rx<String>? panadol1;

  Rx<String>? quantiity;

  Rx<String>? price;

  Rx<String>? facebook;

  Rx<String>? id;
}
