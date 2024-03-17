import '../../../core/app_export.dart';

/// This class is used in the [relatedarticles_item_widget] screen.
class RelatedarticlesItemModel {
  RelatedarticlesItemModel({
    this.image,
    this.theHealthiest,
    this.date,
    this.time,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgThumbnail);
    theHealthiest = theHealthiest ??
        Rx("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist");
    date = date ?? Rx("Jun 10, 2021 ");
    time = time ?? Rx("5min read");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? theHealthiest;

  Rx<String>? date;

  Rx<String>? time;

  Rx<String>? id;
}
