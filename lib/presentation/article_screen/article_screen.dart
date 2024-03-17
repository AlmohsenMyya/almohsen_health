import 'package:almohsen_s_health/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_s_health/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_health/widgets/custom_search_view.dart';
import 'models/topics_item_model.dart';
import '../article_screen/widgets/topics_item_widget.dart';
import 'widgets/trendings_item_widget.dart';
import 'models/trendings_item_model.dart';
import 'widgets/relatedarticles_item_widget.dart';
import 'models/relatedarticles_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_health/core/app_export.dart';
import 'controller/article_controller.dart';

class ArticleScreen extends GetWidget<ArticleController> {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          controller: controller.searchController,
                          hintText: "msg_search_article".tr),
                      SizedBox(height: 23.v),
                      Text("msg_popular_articles".tr,
                          style:
                              CustomTextStyles.titleMediumOnPrimaryContainer_1),
                      SizedBox(height: 10.v),
                      _buildTopics(),
                      SizedBox(height: 23.v),
                      _buildTrendingArticles(),
                      SizedBox(height: 11.v),
                      _buildTrendings(),
                      SizedBox(height: 16.v),
                      _buildRelatedArticles(),
                      SizedBox(height: 12.v),
                      _buildRelatedArticles1()
                    ]))));
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
        title: AppbarSubtitle(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(14.h, 14.v, 14.h, 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildTopics() {
    return Obx(() => Wrap(
        runSpacing: 5.v,
        spacing: 5.h,
        children: List<Widget>.generate(
            controller.articleModelObj.value.topicsItemList.value.length,
            (index) {
          TopicsItemModel model =
              controller.articleModelObj.value.topicsItemList.value[index];
          return TopicsItemWidget(model);
        })));
  }

  /// Section Widget
  Widget _buildTrendingArticles() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("msg_trending_articles".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
          Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.labelLargeCyan300))
        ]);
  }

  /// Section Widget
  Widget _buildTrendings() {
    return SizedBox(
        height: 223.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 12.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 17.h);
            },
            itemCount:
                controller.articleModelObj.value.trendingsItemList.value.length,
            itemBuilder: (context, index) {
              TrendingsItemModel model = controller
                  .articleModelObj.value.trendingsItemList.value[index];
              return TrendingsItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildRelatedArticles() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("msg_related_articles".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer_1),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child:
              Text("lbl_see_all".tr, style: CustomTextStyles.labelLargeCyan300))
    ]);
  }

  /// Section Widget
  Widget _buildRelatedArticles1() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: controller
            .articleModelObj.value.relatedarticlesItemList.value.length,
        itemBuilder: (context, index) {
          RelatedarticlesItemModel model = controller
              .articleModelObj.value.relatedarticlesItemList.value[index];
          return RelatedarticlesItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
