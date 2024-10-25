import 'package:flutter/material.dart';
import 'package:restaurant_app/detail_page.dart';
import 'package:restaurant_app/model/food_data.dart';

class MenuItemCard extends StatelessWidget {
  final int index;

  MenuItemCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 30),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(index: index)));
                },
                child: Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          menu[index].imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            menu[index].name,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            menu[index].shortdesc,
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Rp ' + menu[index].price,
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                'Terimakasih atas pesanannya, Kamu telah memesan ' +
                                menu[index].name +
                                '. Mohon ditunggu :)', style: TextStyle(fontFamily: 'Quicksand', fontWeight: FontWeight.w400, fontSize: 25),),
                          );
                        });
                  },
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.lightBlue,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
