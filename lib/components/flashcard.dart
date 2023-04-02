import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final bool active;
  const MyCard({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    final double blur = active ? 30 : 10;
    final double offset = active ? 10 : 0;
    final double top = active ? 100 : 150;
    final double bottom = active ? 100 : 150;
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInQuint,
      margin: EdgeInsets.only(top: top, bottom: bottom, right: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black87,
              blurRadius: blur,
              offset: Offset(offset, offset))
        ],
      ),
      child: FlipCard(
        direction: FlipDirection.VERTICAL,
        front: Container(
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          alignment: Alignment.center,
          width: 300,
          height: 300,
          child: Text("Front"),
        ),
        // back of the card
        back: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 185, 225, 225),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Text("Back"),
        ),
      ),
    );
  }
}
