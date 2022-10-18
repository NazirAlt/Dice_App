import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../repositories/math_repos.dart';

class DiceController extends GetxController {
  RxInt LeftNumber = 2.obs;

  RxInt RightNumber = 6.obs;
  RxInt count = 0.obs;
  void getRandomNumber() {
    LeftNumber.value = MathRepos.getRandomNumber();
    RightNumber.value = MathRepos.getRandomNumber();
    count.value++;
  }
}
