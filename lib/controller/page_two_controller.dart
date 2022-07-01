import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:medical_consulttancy/controller/api_controller.dart';
import 'package:medical_consulttancy/models/advertisement.dart';
import 'package:medical_consulttancy/models/device.dart';
import 'package:medical_consulttancy/models/main_obj.dart';
import 'package:medical_consulttancy/models/test_api.dart';

import '../models/custom_response.dart';

class PageTwoController extends GetxController
{

   var deviceList=[].obs;
  @override
  void onInit() {
    super.onInit();
  }


  Future<void> loadData() async
  {
      final response=await ApiController.getData(ApiController.endpointAdvertisement);
      deviceList.value=Advertisements.fromJsonList(json.decode(json.encode(response)));

  }
   Future<MainObj?> getAdvertisementsSilently() async {
     try {

      final response= await ApiController.getData('https://api.publicapis.org/entries');
      MainObj list=MainObj.fromJson(json.decode(response));
      return list;

     } catch (ex) {
       if (kDebugMode) {
       }
     }
     return MainObj();
   }

}