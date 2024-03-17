import 'package:almohsen_s_health/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_subtitle.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/ambulance_controller.dart';

// ignore_for_file: must_be_immutable
class AmbulanceScreen extends GetWidget<AmbulanceController> {
  AmbulanceScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                height: 710.v,
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 13.v, bottom: 1.v),
                child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(37.43296265331129, -122.08832357078792),
                        zoom: 14.4746),
                    onMapCreated: (GoogleMapController controller) {
                      googleMapController.complete(controller);
                    },
                    zoomControlsEnabled: false,
                    zoomGesturesEnabled: false,
                    myLocationButtonEnabled: false,
                    myLocationEnabled: false))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_ambulance".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
