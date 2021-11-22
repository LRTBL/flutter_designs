import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.red,
    //   height: 80,
    //   width: double.infinity,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: <Widget>[
    //       Icon(Icons.ac_unit),
    //       Icon(Icons.ac_unit),
    //       Icon(Icons.ac_unit),
    //     ],
    //   ),
    //   // child: SizedBox(),
    // );
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        // showSelectedLabels: false,

        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        currentIndex: 0,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined), label: 'Home'),
        ],
      ),
    );
  }
}
