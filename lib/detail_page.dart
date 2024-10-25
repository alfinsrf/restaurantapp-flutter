import 'package:flutter/material.dart';
import 'package:restaurant_app/model/food_data.dart';

class DetailPage extends StatefulWidget {
  final int index;

  DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _like = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Stack(
            children: <Widget>[
              Container(
                height: height * 0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(menu[widget.index].imageAsset),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.9),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: height * 0.5),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      menu[widget.index].name,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      width: width,
                      child: ListView.builder(
                        itemCount: menu[widget.index].rating,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int key) {
                          return Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                            size: 34,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      menu[widget.index].description,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          wordSpacing: 1.5,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Price',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[500],
                                  fontSize: 16),
                            ),
                            Text(
                              'Rp ' + menu[widget.index].price,
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text(
                                      'Terimakasih atas pesanannya, Kamu telah memesan ' +
                                          menu[widget.index].name +
                                          '. Mohon ditunggu :)', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w400, fontSize: 25),),
                                  );
                                });
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.lightBlueAccent,
                          padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                          child: Text(
                            'Pesan',
                            style: TextStyle(
                              fontFamily: 'Quciksand',
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 10,
                top: height * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 42,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 30,
                top: height * 0.45,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _like = !_like;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Icon(
                      Icons.favorite,
                      size: 45,
                      color: (_like) ? Colors.red : Colors.grey[600],
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
