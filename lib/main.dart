import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
        brightness: Brightness.light,
      ),
      initialRoute: AppRoutes.main,
      routes: AppRoutes.routes,
    );
  }
}



















































































































// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const UserPage(),
//     );
//   }
// }

// class UserPage extends StatefulWidget {
//   const UserPage({super.key});

//   @override
//   State<UserPage> createState() => _UserPageState();
// }

// class _UserPageState extends State<UserPage> {
//   List users = [];

//   Future<void> fetchUsers() async {
//     final response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/users'),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);

//       setState(() {
//         users = data;
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();

//     fetchUsers();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Users'),
//       ),

//       body: ListView.builder(
//         itemCount: users.length,

//         itemBuilder: (context, index) {
//           final user = users[index];

//           return ListTile(
//             leading: CircleAvatar(
//               child: Text(
//                 user['id'].toString(),
//               ),
//             ),

//             title: Text(
//               user['name'],
//             ),

//             subtitle: Text(
//               user['email'],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }