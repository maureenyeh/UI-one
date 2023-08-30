import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'MyTask.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
          child: Container(
              // decoration:
              //     BoxDecoration(border: Border.all(), color: Colors.red),
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          // height: 300,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Rafel Williams',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Good morning',
                                  style: TextStyle(color: Colors.grey[600]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        child: badges.Badge(
                          position:
                              badges.BadgePosition.topEnd(top: -20, end: -20),
                          badgeContent: Text(
                            '4',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Color.fromARGB(255, 62, 232, 223),
                            padding: EdgeInsets.all(8),
                            // elevation: 20,
                          ),
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                    fontSize: 15,
                  ),
                  isScrollable: true,
                  indicatorColor: Color.fromARGB(255, 167, 124, 233),
                  tabs: <Widget>[
                    Tab(
                      text: 'My Tasks',
                    ),
                    Tab(
                      text: 'Not Started',
                    ),
                    Tab(
                      text: 'In Progress',
                    ),
                    Tab(
                      text: 'Complete',
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: MyTask(),
          ),
          Container(
            child: Text('456'),
          ),
          Container(
            child: Text('789'),
          ),
          Container(
            child: Text('000'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_week),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'School',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.group_outlined),
          //   label: 'School',
          // ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
