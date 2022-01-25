import 'package:bottom_tab_nav/page/chat.dart';
import 'package:bottom_tab_nav/page/dashboard.dart';
import 'package:bottom_tab_nav/page/profile.dart';
import 'package:bottom_tab_nav/page/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = Dashboard();

  List<Widget> scrren = [
    Dashboard(),
    Chat(),
    Profile(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Dashboard();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: currentTab == 0
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              color: currentTab == 0
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Chat();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.chat,
                            color: currentTab == 1
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                          ),
                          Text(
                            'chat',
                            style: TextStyle(
                              color: currentTab == 1
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.person,
                            color: currentTab == 2
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: currentTab == 2
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Setting();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.settings,
                            color: currentTab == 3
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: currentTab == 3
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
