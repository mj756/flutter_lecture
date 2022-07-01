import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_consulttancy/view/page_one.dart';
import 'package:medical_consulttancy/view/page_two.dart';
import '../controller/home_page_controller.dart';
import '../widget/side_bar.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({Key? key}) : super(key: key);
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(),
        drawer: const SideBar(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            controller.changePage(index);
            pageController.jumpToPage(index);
          },
          selectedItemColor: Colors.orange,
          selectedFontSize: 18,
          currentIndex: controller.currentPageIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
          ],
        ),
        body: PageView(
          scrollDirection: Axis.horizontal,
          // physics:const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [const PageOne(), PageTwo()],
          onPageChanged: (index) {
            controller.changePage(index);
          },
        ),
      ),
    );
  }
}
