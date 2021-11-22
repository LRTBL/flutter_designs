import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Table(
        children: [
          TableRow(
            children: [
              _SingleCard(
                title: 'Footloose',
                color: Colors.purple.shade500,
                icon: Icons.ac_unit_rounded,
                toNavigate: 'footloose/login',
              ),
              const _SingleCard(
                title: 'Transport',
                color: Colors.deepPurpleAccent,
                icon: Icons.ac_unit_rounded,
              ),
            ],
          ),
          // TableRow(
          //   children: [
          //     _SingleCard(
          //       title: 'Shopping',
          //       color: Colors.pink.shade400,
          //       icon: Icons.ac_unit_rounded,
          //     ),
          //     _SingleCard(
          //       title: 'Bills',
          //       color: Colors.yellow.shade800,
          //       icon: Icons.ac_unit_rounded,
          //     ),
          //   ],
          // ),
          TableRow(
            children: [
              _SingleCard(
                title: 'Entertaiment',
                color: Colors.blueAccent.shade700,
                icon: Icons.ac_unit_rounded,
              ),
              const _SingleCard(
                title: 'Grocery',
                color: Colors.green,
                icon: Icons.ac_unit_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String title;
  final String? toNavigate;
  final Color color;
  final IconData icon;
  const _SingleCard(
      {Key? key,
      required this.title,
      required this.color,
      required this.icon,
      this.toNavigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          toNavigate != null ? Navigator.pushNamed(context, toNavigate!) : null,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 0),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            color,
                          ],
                        )),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(icon, size: 35, color: Colors.white),
                      radius: 35,
                    ),
                  ),
                  Text(title,
                      style: TextStyle(
                        color: color,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
