import '../../../core/app_export.dart';
import 'drugs_item_model.dart';
import 'drugs1_item_model.dart';

/// This class defines the variables used in the [pharmacy_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PharmacyModel {
  Rx<List<DrugsItemModel>> drugsItemList = Rx([
    DrugsItemModel(
        panadol: ImageConstant.imgDrugThumbnail.obs,
        panadol1: "Panadol".obs,
        quantiity: "20pcs".obs,
        price: "15.99".obs,
        facebook: ImageConstant.imgFacebookPrimary.obs),
    DrugsItemModel(
        panadol: ImageConstant.imgDrugThumbnail50x50.obs,
        panadol1: "Bodrex Herbal".obs,
        quantiity: "100ml".obs,
        price: "7.99".obs,
        facebook: ImageConstant.imgFacebookPrimary.obs),
    DrugsItemModel(
        panadol: ImageConstant.imgDrugThumbnail1.obs,
        panadol1: "Konidin".obs,
        quantiity: "3pcs".obs,
        price: "5.99".obs)
  ]);

  Rx<List<Drugs1ItemModel>> drugs1ItemList = Rx([
    Drugs1ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail1.obs,
        panadol: "OBH Combi".obs,
        measurement: "75ml".obs,
        price: "9.99".obs,
        facebook: ImageConstant.imgFacebookPrimary.obs),
    Drugs1ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail2.obs,
        panadol: "Betadine".obs,
        measurement: "50ml".obs,
        price: "6.99".obs,
        facebook: ImageConstant.imgFacebookPrimary.obs),
    Drugs1ItemModel(
        oBHCombi: ImageConstant.imgDrugThumbnail3.obs,
        panadol: "Bodrexin".obs,
        measurement: "50ml".obs,
        price: "7.99".obs)
  ]);
}
