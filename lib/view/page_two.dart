import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_consulttancy/controller/page_two_controller.dart';
import 'package:medical_consulttancy/models/main_obj.dart';
import 'package:medical_consulttancy/view/description_page.dart';

import '../widget/side_bar.dart';

class PageTwo extends GetView<PageTwoController>
{
  @override
  Widget build(BuildContext context) {
    Get.put(PageTwoController());
        return FutureBuilder(
          future: controller.getAdvertisementsSilently(),
            builder: (context,AsyncSnapshot<MainObj?> snapshot){
             if(snapshot.connectionState==ConnectionState.waiting)
               {
                 return const Center(child: CircularProgressIndicator());
               }
             else
               {
                 if(snapshot.hasData==false)
                   {
                     print(json.encode(snapshot.data));
                     return const Center(child:Text('no data found'));
                   }
                 else {
                   MainObj? response=snapshot.data;
                   return  ListView.builder(
                        itemCount:  response!.entries.length,
                        itemBuilder: (context,index){
                          return ListTile(
                            onTap: ()async {
                                  await Navigator.push(context,MaterialPageRoute(builder: (context)=>DescriptionPage(detail:response.entries[index])));
                            },
                            title:Text(response.entries[index].API),
                                subtitle: Text(response.entries[index].Description),
                          );
                        }
                    );
                 }
               }
            }
    );
  }

}