import 'topics_item_model.dart';
import '../../../core/app_export.dart';
import 'trendings_item_model.dart';
import 'relatedarticles_item_model.dart';

/// This class defines the variables used in the [article_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArticleModel {
  Rx<List<TopicsItemModel>> topicsItemList =
      Rx(List.generate(3, (index) => TopicsItemModel()));

  Rx<List<TrendingsItemModel>> trendingsItemList = Rx([
    TrendingsItemModel(
        covidNineteen: ImageConstant.imgRectangle54.obs,
        covidNineteen1: "Covid-19".obs,
        description:
            "Comparing the \nAstraZeneca and \nSinovac COVID-19 \nVaccines".obs,
        date: "Jun 12, 2021".obs,
        time: "6 min read".obs),
    TrendingsItemModel(
        covidNineteen: ImageConstant.imgRectangle5487x138.obs,
        covidNineteen1: "Covid-19".obs,
        description:
            "The Horror Of The \nSecond Wave Of \nCOVID-19 \npandemic".obs,
        date: "Jun 10, 2021".obs,
        time: "5 min read".obs)
  ]);

  Rx<List<RelatedarticlesItemModel>> relatedarticlesItemList = Rx([
    RelatedarticlesItemModel(
        image: ImageConstant.imgThumbnail.obs,
        theHealthiest:
            "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist"
                .obs,
        date: "Jun 10, 2021 ".obs,
        time: "5min read".obs),
    RelatedarticlesItemModel(
        image: ImageConstant.imgRectangle541.obs,
        theHealthiest:
            "Traditional Herbal Medicine Treatments for COVID-19".obs,
        date: "Jun 9, 2021 ".obs,
        time: "8 min read".obs)
  ]);
}
