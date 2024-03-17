import '../../../core/app_export.dart';

/// This class is used in the [thirtylist_item_widget] screen.
class ThirtylistItemModel {
  ThirtylistItemModel({
    this.ticket,
    this.id,
  }) {
    ticket = ticket ?? Rx(ImageConstant.imgTicket);
    id = id ?? Rx("");
  }

  Rx<String>? ticket;

  Rx<String>? id;
}
