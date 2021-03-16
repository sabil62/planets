import 'package:flutter/material.dart';
import 'package:planet/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[100],
                      fontFamily: 'Avenir'),
                ),
                DropdownButton(
                  items: [
                    DropdownMenuItem(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Solar System",
                        style: TextStyle(
                            fontFamily: "Avenir",
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0x7cdbf1ff)),
                        textAlign: TextAlign.left,
                      ),
                    ))
                  ],
                  onChanged: (value) {},
                  icon: Image.asset("assets/drop_down_icon.png"),
                  underline: SizedBox(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
