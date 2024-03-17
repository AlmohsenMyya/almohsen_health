import '../../../core/app_export.dart';
import 'drlist_item_model.dart';

/// This class defines the variables used in the [dr_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DrListModel {
  Rx<List<DrlistItemModel>> drlistItemList = Rx([
    DrlistItemModel(
        drMarcusHorizon: ImageConstant.imgProfilePic.obs,
        title: "Dr. Marcus Horizon".obs,
        chardiologist: "Chardiologist".obs,
        ratting: "4.7".obs,
        distance: "800m away".obs),
    DrlistItemModel(
        drMarcusHorizon: ImageConstant.imgProfilePic111x111.obs,
        title: "Dr. Maria Elena".obs,
        chardiologist: "Chardiologist".obs,
        ratting: "4.7".obs,
        distance: "800m away".obs),
    DrlistItemModel(
        drMarcusHorizon: ImageConstant.imgProfilePic1.obs,
        title: "Dr. Stefi Jessi".obs,
        chardiologist: "Chardiologist".obs,
        ratting: "4.7".obs,
        distance: "800m away".obs),
    DrlistItemModel(
        drMarcusHorizon: ImageConstant.imgProfilePic2.obs,
        title: "Dr. Gerty Cori".obs,
        chardiologist: "Chardiologist".obs,
        ratting: "4.7".obs,
        distance: "800m away".obs)
  ]);
}
