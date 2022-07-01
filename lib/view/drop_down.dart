import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/page_one_controller.dart';

class DropDown extends GetView<PageOneController> {
  const DropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PageOneController());
    return Obx(
      () => Column(children: [
        DropdownButton<String>(
          value: controller.initialSelection.value,
          items: controller.menuItems
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newVal) {
            if (newVal != null) {
              controller.changeSelection(newVal);
            }
          },
        ),
        ElevatedButton(
            onPressed: () {
              controller.addLanguage('Java');
            },
            child: Text('Add')),
        Row(
          children: controller.languages.map((e) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              child: Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Text(e.toString()),
                ),
                label: Text(e.toString()),
              ),
            );
          }).toList(),
        )
      ]),
    );
  }
}
