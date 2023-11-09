import 'package:get/get.dart';

class HomeController extends GetxController {
  var isWidgetVisible = true.obs;

  changeVisibility() {
    isWidgetVisible.value = !isWidgetVisible.value;
    update();
  }
}
