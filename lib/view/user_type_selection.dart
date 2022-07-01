import 'package:flutter/material.dart';
import '../utils/utility.dart';
import 'login.dart';

class UserSelection extends StatefulWidget
{
  const UserSelection({Key? key}) : super(key: key);

  @override
  State<UserSelection> createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  late int groupVal=0;
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical consultancy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/fabb9510-cedd-4546-b69b-5b179baba990.jpg"),
              fit: BoxFit.cover,),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
                  Image.asset('assets/app_icon.jpg',height: 100,),
                  SizedBox(height: 10,),
                  Text('Welcome to',style: Utility.headingTextStyle()),
                  SizedBox(height: 10,),
                  Text('Medical consultancy',style: Utility.headingTextStyle()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Radio(
                        value: 1,
                        groupValue: groupVal,
                        onChanged: (val){
                          setState(() {
                            groupVal=int.parse(val.toString());
                            selectedIndex=1;
                          });
                          print('selection change=>$selectedIndex');

                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                        }
                    ),
                      Text('Patient')
                    ]
                  ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Radio(
                        value: 2,
                        groupValue: groupVal,
                        onChanged: (val){
                          setState(() {
                            groupVal=int.parse(val.toString());
                            selectedIndex=2;
                          });
                          print('selection change=>$selectedIndex');
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                        }
                    ),
                    Text('Patient')
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Radio(

                        value: 3,
                        groupValue: groupVal,
                        onChanged: (val){
                          if(val!=null)
                            {
                              setState(() {
                                groupVal=int.parse(val.toString());
                                selectedIndex=3;
                                print('selection change=>$selectedIndex');
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                              });
                            }

                        }
                    ),
                    Text('Patient')
                  ]
              ),

            ],
          ),
        ),
      ),
    );
  }
}