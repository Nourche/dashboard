import 'package:dashboard/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  List<User> Users = [
    User(name: 'Amina Hampo', phone: '20-03-2021'),
    User(name: 'Raid Sohail', phone: '30-05-2021'),
  ];

  void addUser(User user) {
    Users.add(user);
    notifyListeners();
  }
}
