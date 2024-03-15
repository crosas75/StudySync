import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class UserHome extends StatelessWidget {
  UserHome({super.key});

  final user = FirebaseAuth.instance.currentUser!;

   //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut, 
            icon: const Icon(
            Icons.logout
            )
          )
        ],
      ),
      body: 
      const Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}

