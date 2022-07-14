import 'package:assessment/src/ui/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    void onItemSelected(int index) {
      setState(() {
        selectedIndex = index;
        print(selectedIndex);
      });
    }

    List<Widget> _pages = <Widget>[
      const DashboardScreen(),
      Text("2"),
      Text("3"),
      Text("4"),
      Text("5"),
    ];
    Color appColor = const Color(0xff151534);

    return Scaffold(
      body: Center(
        child: _pages.elementAt(selectedIndex), //New
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemSelected,
        selectedItemColor: appColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.creditcard_fill), label: "Spend"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag_fill), label: "Save"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: "Borrow"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: "More")
        ],
      ),
    );
  }
}
