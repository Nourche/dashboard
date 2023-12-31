import 'package:dashboard/models/user.dart';
import 'package:dashboard/providers/users_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddUserForm extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'UserName'),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: phoneController,
            decoration: InputDecoration(labelText: 'PhoneNumber'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              context.read<UserProvider>().addUser(
                  User(name: nameController.text, phone: phoneController.text));

              Navigator.pop(context);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
