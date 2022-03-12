import 'package:get/get.dart';
import 'package:twitter_clone/core/view-model/time_line_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TimeLineViewModel());
  }
}
