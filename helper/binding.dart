import 'package:e_commers_app/view/view_model/home_veiw_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }
}
