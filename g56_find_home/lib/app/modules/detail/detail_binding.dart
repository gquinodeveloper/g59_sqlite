import 'package:get/get.dart';
import 'package:g56_find_home/app/modules/detail/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
