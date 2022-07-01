import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_consulttancy/view/page_one.dart';
import 'package:medical_consulttancy/view/page_two.dart';

import '../controller/learn_dart_controller.dart';

class TabBarDemo extends StatefulWidget {
  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>  with  SingleTickerProviderStateMixin  {

  late TabController _controller;

  @override
  void initState() {

    super.initState();
    _controller=TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab bar'),
        centerTitle: true,
        bottom:  TabBar(
          onTap: (index){

          },
            controller:_controller,
            indicatorColor:Colors.orange,
           // labelColor:Colors.green,
          unselectedLabelStyle:const TextStyle(color: Colors.red,fontSize: 10),
          tabs: const [
            Text('Tab1',style: TextStyle(color: Colors.white),),
            Text('Tab2',style: TextStyle(color: Colors.white),),
          //  Icon(Icons.home)
            ],
        ),
      ),
      body: TabBarView(
          controller:_controller,
          children: [
            const PageOne(),
            PageTwo()
          ]

      ),
      floatingActionButton: FloatingActionButton(
        child: (const Icon(Icons.add)),
        onPressed: () {
          setState(() {
          //  _controller.index=_controller.index==1 ? 0:1;

            DartCoding obj=DartCoding();
            obj.add();
            
            obj.search('abc4');
            

          });

        },

      ),
    );
  }



  Widget buildBackUp(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab bar'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Icon(Icons.home),
              Icon(Icons.home)],
          ),

        ),
        body: TabBarView(
          children: [
           const PageOne(),
            PageTwo()
          ]

        ),
      ),
    );
  }
}
