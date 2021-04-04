import 'package:flutter/material.dart';

class Analyze extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analyze data"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Text("Tiger"),
                    height: 178,
                    width: 235,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 2),
                              spreadRadius: 3,
                              blurRadius: 3)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blue[100], Colors.blue[500]]),
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text("Leopard"),
                    height: 178,
                    width: 235,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 2),
                              spreadRadius: 3,
                              blurRadius: 3)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.yellow[100], Colors.yellow[500]]),
                        shape: BoxShape.circle),
                  ),
                  Divider(
                    height: 30,
                    thickness: 2,
                  ),
                  Container(
                    child: Text("Lion"),
                    height: 178,
                    width: 235,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 2),
                              spreadRadius: 3,
                              blurRadius: 3)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.greenAccent[100],
                              Colors.greenAccent[500]
                            ]),
                        shape: BoxShape.circle),
                  ),
                  Divider(
                    height: 30,
                    thickness: 2,
                    color: Colors.grey.shade700,
                  ),
                  Container(
                    child: Text("Lion"),
                    height: 178,
                    width: 235,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 2),
                              spreadRadius: 3,
                              blurRadius: 3)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.greenAccent[100],
                              Colors.greenAccent[500]
                            ]),
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
