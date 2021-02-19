import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Color> colors = [
  Colors.red,
  Colors.amber,
  Colors.lightGreenAccent,
  Colors.lightBlue,
  Colors.pink,
  Colors.deepOrange,
];
final days = [
  'Senin',
  'Selasa',
  'Rabu',
  'Kamis',
  'Jumat',
  'Sabtu',
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('ListView'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        width: 200,
                        child: Card(
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new SvgPicture.asset(
                                'assets/icon/fried-potatoes.svg',
                                height: 100,
                                width: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              new Text('Kentang',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        width: 200,
                        child: Card(
                          color: Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new SvgPicture.asset(
                                'assets/icon/sparkling-water.svg',
                                height: 100,
                                width: 100,
                                allowDrawingOutsideViewBox: true,
                              ),
                              new Text('Es Kelapa',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Center(
                  child: Text('List Menu',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 240,
                  width: 400,
                  margin: EdgeInsets.all(6),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 180,
                          margin: EdgeInsets.all(6),
                          child: Card(
                            color: colors[index],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(days[index],
                                      style: TextStyle(fontSize: 20)),
                                ),
                                SvgPicture.asset(
                                  'assets/icon/menu.svg',
                                  height: 140,
                                  width: 150,
                                  alignment: Alignment.bottomCenter,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: 100,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(2, (index) {
                      return Container(
                        child: Card(
                          color: Colors.lightGreenAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/icon/dinner.svg',
                                height: 150,
                                width: 150,
                                alignment: Alignment.topCenter,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
