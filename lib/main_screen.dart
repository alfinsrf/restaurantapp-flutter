import 'package:flutter/material.dart';
import 'package:restaurant_app/food_page.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: height * 0.3,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/fotosteak.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                      bottom: 50,
                      left: 20,
                      child: RichText(
                        text: TextSpan(
                          text: 'Makan apa\nhari ini?',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                        ),
                      ))
                ],
              ),
              Transform.translate(
                offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: DefaultTabController(
                    length: 1,
                    child: Column(
                      children: <Widget>[
                        TabBar(
                            labelColor: Colors.black,
                            labelStyle: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: Colors.transparent,
                            tabs: <Widget>[
                              Tab(
                                child: Text('Restaurant menu'),
                              ),
                            ]),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 3),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                ),
                                hintText: 'What are you craving?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        width: 1.0, color: Colors.grey))),
                          ),
                        ),
                        Container(
                          height: height * 0.6,
                          child: TabBarView(
                            children: <Widget>[
                              FoodPage(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
