import 'package:get/get.dart';

class PageOneController extends GetxController
{

  final List<String> menuItems = ['One', 'two', 'Three'];
  var initialSelection = 'One'.obs;

  List<dynamic> languages=List.empty().obs;
  void changeSelection(String value)
  {
    initialSelection.value=value;
    print(initialSelection.value);
  }

   Future<void> loadData() async
   {


   }

   void addLanguage(String value)
   {
     languages.add(value);
   }

}