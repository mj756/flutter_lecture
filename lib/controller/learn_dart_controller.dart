import 'dart:convert';

import '../models/user.dart';

class DartCoding {
  List<String> list = List.empty(growable: true);
  List<User> users = List.empty(growable: true);

  void add() {
    list.add('one');
    list.add('two');
    list.add('three');

    for (int i = 0; i < 5; i++) {
      User temp = User();
      temp.firstName = 'abc$i';
      temp.email = 'abc$i@test.com';
      temp.profileImage = '';
      temp.id = i + 1;
      temp.lastName = '';
      users.add(temp);
    }

  }

  void search(String param) {
    bool isFound=false;
    for (int i = 0; i < list.length; i++) {
      if (list[i] == param) {
        print('found');
        isFound=true;
        break;
      }
    }

    for (int i = 0; i < users.length; i++) {
      if (users[i].firstName=='abc4') {
        print('found');
        isFound=true;
        break;
      }
    }

     List<User> test=users.where((element) =>  element.firstName==param && element.id==4).toList();

    if(test.isNotEmpty)
      {
        print('user name found');
        print(test.length);
        print(json.encode(test));
      }
      else
      {
        print('list is empty');
      }
    int index= users.   indexWhere((element) =>  element.firstName==param && element.id==4);

    users.sort((a,b)=>a.firstName.compareTo(b.firstName));
    users.sort((a,b)=>b.firstName.compareTo(a.firstName));
    print(index);
  }
}
