import '../../../core/app_export.dart';

/// This class is used in the [doctorlist_item_widget] screen.
class DoctorlistItemModel {
  DoctorlistItemModel({
    this.drMarcusHorizo,
    this.drMarcusHorizo1,
    this.chardiologist,
    this.ratting,
    this.distance,
    this.id,
  }) {
    drMarcusHorizo = drMarcusHorizo ?? Rx(ImageConstant.imgEllipse27image);
    drMarcusHorizo1 = drMarcusHorizo1 ?? Rx("Dr. Marcus Horizo");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    ratting = ratting ?? Rx("4,7");
    distance = distance ?? Rx("800m away");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizo;

  Rx<String>? drMarcusHorizo1;

  Rx<String>? chardiologist;

  Rx<String>? ratting;

  Rx<String>? distance;

  Rx<String>? id;
}
