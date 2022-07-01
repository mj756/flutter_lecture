import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:medical_consulttancy/controller/preference_controller.dart';
import 'package:medical_consulttancy/utils/utility.dart';
import 'package:medical_consulttancy/view/home_page.dart';

import '../models/custom_response.dart';
import '../models/test.dart';
import '../models/user.dart';
import 'api_controller.dart';

class LoginController extends GetxController
{
     var isObscurePassword=false.obs;


     void toggleObscurePassword()
     {

       isObscurePassword.toggle();

     }

     Future<void> login(BuildContext context, String email,String password) async
     {
       try
           {

             final jsonPayload=json.encode({
               'email':email,
               'password':password
             });

             final String result=await ApiController.postData(ApiController.loginUrl,jsonPayload);

             CustomResponse myResponse=CustomResponse.fromJson(json.decode(result));
             if(myResponse.status==0)
               {

                      User user=User.fromJson(json.decode(json.encode(myResponse.payload)));
                      PreferenceController.setBooleanValue(PreferenceController.prefKeyIsLoggedIn,true);
                      PreferenceController.setStringValue(PreferenceController.prefKeyUserDetail,json.encode(user));
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> HomePage()));
               }
             else
               {
                 Utility.showSnackBar(context,myResponse.message!,isSuccess: false);
               }


           }catch(e)
       {

       }
     }

}