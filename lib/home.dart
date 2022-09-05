import 'package:flutter/material.dart';
import 'package:flutter_week17/contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const Center(
        child: Text("สวัสดี"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
             const UserAccountsDrawerHeader(
                accountName: Text("Mark Zuckerberg"),
                accountEmail: Text("mark@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                ),
       
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                debugPrint("Home");
              },
            ),
             ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text("Contact"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactPage()));
                debugPrint("Home");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Hello");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}