import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:medical_consulttancy/controller/preference_controller.dart';

import '../utils/utility.dart';
class ApiController
{
  static const String baseToken="bd5a9e47-a632-41fb-b9a5-5a0a00c5ca85";
  static const baseAddress="http://46.4.49.27:9090/api/";
  static const loginUrl="$baseAddress/user/login";
  static const String endpointDevice="${baseAddress}device";
  static const String endpointAdvertisement="${baseAddress}advertisement";

  static const timeOut=Duration(seconds: 30);


  static Map<String,String> getHeader({String method='POST'})
  {
    print('header function');
    String userId=PreferenceController.getString(PreferenceController.prefKeyLoggedInUserId);
    print(userId);
    Map<String,String> header=<String,String>{};
    String token=base64.encode(utf8.encode(baseToken+ userId.length.toString() +
        userId + DateTime.now().millisecondsSinceEpoch.toString()));
    header['Authorization']=token;
    print('authorization token=>$token');
    header['Language']=PreferenceController.getString('en');
    if(method!="GET") {
      header['Content-type']="application/json";
    }

    return header;
  }
  static Future<String> getData(String url)async{
    try
        {

          var response = await http.get(Uri.parse(url),headers: getHeader()).timeout(timeOut);
          if(response.statusCode==200)
            {

                 return response.body;
            }
          else
            {
              print(response.body);
            }

        }catch(ex)
    {
              if (kDebugMode) {
                print(ex);
              }
    }
    return '';
  }


  static Future<String> postData(String url,String bodyPayload)
  async {
    try
    {

      var response = await http.post(Uri.parse(url),body:bodyPayload ,headers: getHeader()).timeout(timeOut);
      if(response.statusCode==200)
      {
         return response.body;
      }
      else
      {
        print(response.body);
        return 'error occurred';
      }
    }catch(ex)
    {
      if (kDebugMode) {
        print(ex);
      }
    }
    return 'error occurred';
  }




}