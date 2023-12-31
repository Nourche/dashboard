import 'package:flutter/material.dart';

class AddUserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'UserName'),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(labelText: 'PhoneNumber'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Process the form data
              // Close the bottom sheet when the form is submitted
              Navigator.pop(context);
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
