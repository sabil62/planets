import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:planet/constants.dart';
import 'package:planet/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(29), topRight: Radius.circular(29)),
            color: navigationColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/menu_icon.png")),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/search_icon.png")),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/profile_icon.png")),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [gradientStartColor, gradientEndColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 10),
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
                ),
                Container(
                    height: 478,
                    child: Swiper(
                      itemCount: planets.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                              activeSize: 20,
                              activeColor: Colors.white,
                              color: Colors.grey[300],
                              space: 8)),
                      itemBuilder: (BuildContext context, index) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Card(
                                  color: Colors.white,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 100,
                                        ),
                                        Text(
                                          planets[index].name,
                                          style: TextStyle(
                                              fontFamily: "Avenir",
                                              fontSize: 36,
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xff47455f)),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Solar System",
                                          style: TextStyle(
                                              fontFamily: "Avenir",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                              color: primaryTextColor),
                                        ),
                                        SizedBox(
                                          height: 28,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Know More",
                                              style: TextStyle(
                                                  fontFamily: "Avenir",
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: secondaryTextColor),
                                              textAlign: TextAlign.left,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: secondaryTextColor,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Image.asset(planets[index].iconImage),
                          ],
                        );
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
