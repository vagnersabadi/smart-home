import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                leading: IconButton(
                    icon: Icon(Icons.notifications), onPressed: null),
                title: Text(
                  '25° C',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: ColorPrimary),
                ),
                backgroundColor: ColorSecondary,
                actions: <Widget>[
                  IconButton(icon: Icon(Icons.notifications), onPressed: null)
                ],
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: ColorPrimary,
                  labelColor: Colors.black,
                  unselectedLabelColor: Grey1,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    // Tab(icon: Icon(Icons.directions_car)),
                    Tab(
                      text: 'LIVING ROM',
                    ),
                    Tab(
                      text: 'KITCHEN',
                    ),
                    Tab(
                      text: 'DRAWING ROOM',
                    ),
                    Tab(
                      text: 'STUDY ROOM',
                    ),
                  ],
                ),
              ),
              backgroundColor: ColorSecondary,
              body: TabBarView(
                children: [
                  new Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: ListCards(),
                  ),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
              ),
            )));
  }
}

class ListCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: List.generate(6, (index) {
              return Center(child: CardCustom());
            })));
  }
}

class CardCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: InkWell(
                child: Container(
                    width: 200,
                    child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Icon(
                                Icons.notifications_none,
                                color: ColorPrimary,
                              ),
                            ),
                            new Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Air Conditioner',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                            new Padding(
                              padding: EdgeInsets.all(4),
                              child: Text('Voltas RF140',
                                  style: TextStyle(
                                      color: Grey1,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10)),
                            ),
                            new Padding(
                              padding: EdgeInsets.all(1),
                              child: CupertinoSwitch(
                                value: false,
                                onChanged: (bool value) {},
                                activeColor: ColorPrimary,
                              ),
                            )
                          ],
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
