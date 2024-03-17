import '../../../core/app_export.dart';
import '../models/dashboard_container_model.dart';

/// A controller class for the DashboardContainerScreen.
///
/// This class manages the state of the DashboardContainerScreen, including the
/// current dashboardContainerModelObj
class DashboardContainerController extends GetxController {
  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.pharmacyScreen,
    );
    Get.toNamed(
      AppRoutes.ambulanceScreen,
    );
    Get.toNamed(
      AppRoutes.articleScreen,
    );
    Get.toNamed(
      AppRoutes.drListScreen,
    );
    Get.toNamed(
      AppRoutes.drDetailsScreen,
    );
    Get.toNamed(
      AppRoutes.articleScreen,
    );
    Get.toNamed(
      AppRoutes.drListScreen,
    );
  }
}
