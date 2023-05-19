import 'package:get/get.dart';
import 'package:sale_car_project/controller/car_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      CarController(),
      permanent: true,
    );
  }
}
