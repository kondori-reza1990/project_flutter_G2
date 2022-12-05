import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.indigo,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: h * 3 / 4,
              padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50)
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Card Number",
                        prefixIcon: Icon(Icons.credit_card),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Expiry Date",
                              prefixIcon: Icon(Icons.date_range),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Cvv2",
                                prefixIcon: Icon(Icons.numbers),
                              ),
                            )
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: w / 5,
              top: h / 4 - 75,
              child: Container(
                width: w * 3 / 5,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40)
                ),
              )
          )
        ],
      )
      );
  }
}