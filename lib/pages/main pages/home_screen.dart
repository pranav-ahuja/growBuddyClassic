import 'package:flutter/material.dart';
import 'package:grow_buddy_app/constant.dart';
import 'package:grow_buddy_app/utilities/functions/commonFunctions.dart';
import 'package:ionicons/ionicons.dart';
import 'package:grow_buddy_app/utilities/Home Screen/classes.dart';
import 'package:grow_buddy_app/utilities/Home Screen/events.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Grow Buddy"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Ionicons.menu,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Ionicons.person_circle_sharp,
              size: 30.0,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            height: 2.0,
            color: kAppBarDividerColor,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.people),
            label: 'Attendence',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Fees',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTappedIndex,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor1,
        child: Icon(
          Ionicons.person_add_sharp,
          color: kPrimaryColor2,
        ),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(
            width: 10.0,
            color: kPrimaryColor1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Events(screenWidth: screenWidth),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: buildHeaderText("Your classes at a glance!",
                  kHeaderTextStyle, TextAlign.left),
            ),
            Classes(),
          ],
        ),
      ),
    );
  }

  void _onTappedIndex(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          print("Home Page");
          break;

        case 1:
          print("Attendence Page");
          break;

        case 2:
          print("Fees Page");
          break;

        case 3:
          print("Message Page");
          break;
      }
    });
  }
}
