import 'package:flutter/material.dart';
import '../models/test_api.dart';
class DescriptionPage extends StatelessWidget
{
  final DemoAPI detail;
  const DescriptionPage({Key? key,required this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: (Text(
          detail.Description
        )),
      ),
    );
  }

}