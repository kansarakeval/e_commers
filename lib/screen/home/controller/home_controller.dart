import 'package:e_commers/screen/home/model/home_model.dart';
import 'package:e_commers/utils/api_helper.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  Rxn<HomeModel> homeList = Rxn<HomeModel>();

  Future<void> getModel() async {
    HomeModel? l1 = await ApiHelper.helper.homeApiCall();
    homeList.value = l1;
  }

}