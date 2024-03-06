import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled14/Pages/Auth/login.dart';
import 'package:untitled14/Pages/Settings/Settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        key: _key,
        child: ListView(
          children: [
            Container(
              height: 200,
              width: width,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              child: Center(child: Text('Welcome')),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('profile'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.policy),
              title: Text('privacy policy'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Icon(Icons.settings),
              onTap: (){
                Get.to(Settings());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              child: Icon(Icons.logout),
              onTap: handleLogOut,
            ),
          ),
          SizedBox(width: 2,)
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: InkWell(
          //       onTap: () {
          //         _key.currentState?.openDrawer();
          //       },
          //       child: Icon(Icons.menu)),
          // ),
        ],
      ),
      body: Container(
        child: Center(
          child: Text('This is Homepage'),
        ),
      ),
    );
  }

  handleDrawerOpen() {}

  handleLogOut() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Log Out'),
            content: Text('are you sure to log out?'),
            actions: [
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('cancel')),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('Logout')),
            ],
          );
        });
  }
}
