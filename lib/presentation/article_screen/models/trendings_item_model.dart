import '../../../core/app_export.dart';

/// This class is used in the [trendings_item_widget] screen.
class TrendingsItemModel {
  TrendingsItemModel({
    this.covidNineteen,
    this.covidNineteen1,
    this.description,
    this.date,
    this.time,
    this.id,
  }) {
    covidNineteen = covidNineteen ?? Rx(ImageConstant.imgRectangle54);
    covidNineteen1 = covidNineteen1 ?? Rx("Covid-19");
    description = description ??
        Rx("Comparing the \nAstraZeneca and \nSinovac COVID-19 \nVaccines");
    date = date ?? Rx("Jun 12, 2021");
    time = time ?? Rx("6 min read");
    id = id ?? Rx("");
  }

  Rx<String>? covidNineteen;

  Rx<String>? covidNineteen1;

  Rx<String>? description;

  Rx<String>? date;

  Rx<String>? time;

  Rx<String>? id;
}
