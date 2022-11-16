import 'package:get/get.dart';

import '../../../model/intro_screen_model.dart';
import '../../../resources/assets_manager.dart';
import '../../../resources/strings_manager.dart';

class IntroScreenController extends GetxController{
  
  List<IntroScreenModel> introScreenData = [
    const IntroScreenModel(
        text: AppStrings.introScreenText1,
        imgString: ImageAssets.introScreenImage1),
    const IntroScreenModel(
        text: AppStrings.introScreenText2,
        imgString: ImageAssets.introScreenImage2),
    const IntroScreenModel(
        text: AppStrings.introScreenText3,
        imgString: ImageAssets.introScreenImage3)
  ];
  var currentPage = 0.obs;
  void assignValue(value) {
     currentPage.value = value;
  
}
}