// user_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/users_provider.dart';
import '../widgets/add_user.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var users = context.watch<UserProvider>().Users;
    return Scaffold(
      appBar: AppBar(
        title: Text('Users '),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final e = user.phone;

          return Card(
            elevation: 3,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(user.name),
              subtitle:
                  e != null ? Text('Last Booking: ${e}') : Text('No bookings'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return AddUserForm();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}






// class UserScreen extends StatelessWidget {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add User'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // var provider = context.read<BookingProvider>();
//                 // provider.addUser(User(
//                 //   name: nameController.text,
//                 //   email: emailController.text,
//                 // ));
//                 // Navigator.pop(context);
//               },
//               child: Text('Add User'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
