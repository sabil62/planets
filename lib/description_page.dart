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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 298,
                  ),
                  Text(
                    planetInfo.name,
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
                    // "The fifth planet from the sun, Jupiter is a giant gas world that is the most massive planet in our solar system — more than twice as massive as all the other planets combined, according to NASA. Its swirling clouds are colorful due to different types of trace gases. And a major feature in its swirling clouds is the Great Red Spot, a giant storm more than 10,000 miles wide. It has raged at more than 400 mph for the last 150 years, at least. Jupiter has a strong magnetic field, and with 75 moons, it looks a bit like a miniature solar system.",
                    planetInfo.description,
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Gallery",
                    style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff47455f)),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: planetInfo.images.length,
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 1,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              child: Image.network(
                                planetInfo.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
