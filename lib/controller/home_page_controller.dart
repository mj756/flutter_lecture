import 'package:get/get.dart';

class HomePageController extends GetxController
{

  var currentPageIndex=0.obs;

  void changePage(int index)
  {
    print('page is changing');
    currentPageIndex.value= index;
  }



}