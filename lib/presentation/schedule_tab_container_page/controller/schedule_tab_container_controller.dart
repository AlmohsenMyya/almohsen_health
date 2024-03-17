import '../../../core/app_export.dart';
import '../models/schedule_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ScheduleTabContainerPage.
///
/// This class manages the state of the ScheduleTabContainerPage, including the
/// current scheduleTabContainerModelObj
class ScheduleTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ScheduleTabContainerController(this.scheduleTabContainerModelObj);

  Rx<ScheduleTabContainerModel> scheduleTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
