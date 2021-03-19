import 'package:flutter/material.dart';
import 'package:planet/constants.dart';
import 'package:planet/data.dart';

class DescriptionPages extends StatelessWidget {
  final PlanetInfo planetInfo;
  const DescriptionPages({Key key, this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                "Jupiter",
                style: TextStyle(
                    color: primaryTextColor,
                    fontFamily: "Avenir",
                    fontSize: 56,
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.left,
              ),
              Text(
                "Solar System",
                style: TextStyle(
                    color: primaryTextColor,
                    fontFamily: "Avenir",
                    fontSize: 31,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.left,
              ),
              Divider(
                color: Colors.black38,
                indent: 20,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: primaryTextColor,
                    fontFamily: "Avenir",
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black38,
                indent: 20,
              )
            ],
          ),
        ],
      )),
    );
  }
}
