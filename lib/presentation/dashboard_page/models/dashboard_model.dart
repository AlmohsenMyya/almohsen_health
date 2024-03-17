import '../../../core/app_export.dart';
import 'thirtylist_item_model.dart';
import 'doctorlist_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel {
  Rx<List<ThirtylistItemModel>> thirtylistItemList = Rx([
    ThirtylistItemModel(ticket: ImageConstant.imgTicket.obs),
    ThirtylistItemModel(ticket: ImageConstant.imgCalculator.obs),
    ThirtylistItemModel(ticket: ImageConstant.imgAmbulance.obs),
    ThirtylistItemModel(ticket: ImageConstant.imgCalendar.obs)
  ]);

  Rx<List<DoctorlistItemModel>> doctorlistItemList = Rx([
    DoctorlistItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image.obs,
        drMarcusHorizo1: "Dr. Marcus Horizo".obs,
        chardiologist: "Chardiologist".obs,
        ratting: "4,7".obs,
        distance: "800m away".obs),
    DoctorlistItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image68x68.obs,
        drMarcusHorizo1: "Dr. Maria Elena".obs,
        chardiologist: "Psychologist".obs,
        ratting: "4,9".obs,
        distance: "1,5km away".obs),
    DoctorlistItemModel(
        drMarcusHorizo: ImageConstant.imgEllipse27image1.obs,
        drMarcusHorizo1: "Dr. Stevi Jessi".obs,
        chardiologist: "Orthopedist".obs,
        ratting: "4,8".obs,
        distance: "2km away".obs)
  ]);
}
