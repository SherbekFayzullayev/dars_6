import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Driwer widget')),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Container(
                  color: Color.fromARGB(255, 245, 245, 245),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              'https://avatars.mds.yandex.net/i?id=746feccc4233aac65bb87ba54d0670933b1cb1ab-10468051-images-thumbs&n=13')),
                      Column(
                        children: [
                          Text(
                            'Ashfak Sayem',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            '@Sophia.ashfaksayem@gmail.com',
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const ListTile(
                textColor: Colors.black,
                leading: Icon(Icons.calendar_month),
                title: Text('Calendar'),
              ),
              const ListTile(
                leading: Icon(Icons.military_tech),
                title: Text('Revards'),
              ),
              const ListTile(
                leading: Icon(Icons.pin_drop),
                title: Text('Address'),
              ),
              const ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text('Payments Methods'),
              ),
              const ListTile(
                leading: Icon(Icons.percent),
                title: Text('Offers'),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('Refer a Friend'),
              ),
              const ListTile(
                leading: Icon(Icons.call),
                title: Text('Support'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
