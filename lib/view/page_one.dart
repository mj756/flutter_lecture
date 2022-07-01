import 'package:flutter/material.dart';
import 'package:medical_consulttancy/view/drop_down.dart';
import 'package:medical_consulttancy/widget/side_bar.dart';

class PageOne extends StatelessWidget
{
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return  Center(child:Column(
            children:[

              DropDown(),


            ]),
   );
  }

}