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
            leading:
                IconButton(icon: Icon(Icons.notifications), onPressed: null),
            title: Text(
              '25° C',
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: ColorPrimary),
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
              Container(),
              Container(),
              Container(),
            ],
          ),

          bottomNavigationBar: BottomBar(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: ColorPrimary,
            elevation: 2,
            
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
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
          children: <Widget>[
            new CardCustom(
                Icon(
                  Icons.add,
                  color: ColorPrimary,
                ),
                'Air Conditioner',
                'Voltas RF140',
                false),
            new CardCustom(
                Icon(
                  Icons.add,
                  color: ColorPrimary,
                ),
                'Smart TV',
                'Samsung EX55 4K',
                false),
            new CardCustom(
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                'Light Buld',
                'Phillips Hue 2',
                true),
            new CardCustom(
                Icon(
                  Icons.add,
                  color: ColorPrimary,
                ),
                'Washing Machine',
                'Bosh 7kg 5475',
                false),
            new CardCustom(
                Icon(
                  Icons.add,
                  color: ColorPrimary,
                ),
                'Refrigerator',
                'Whirlpoll WR190',
                false),
            new CardCustom(
                Icon(
                  Icons.add,
                  color: ColorPrimary,
                ),
                'Router',
                'Tp-Link 878',
                false),
          ],
        ));
  }
}

class CardCustom extends StatelessWidget {
  final Icon icone;
  final String nome;
  final String descricao;
  final bool selecionado;

  const CardCustom(this.icone, this.nome, this.descricao, this.selecionado);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Card(
              color: selecionado ? ColorPrimary : Colors.white,
              elevation: selecionado ? 15 : 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
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
                              child: icone,
                            ),
                            new Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(nome,
                                  style: TextStyle(
                                      color: selecionado
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                            new Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(descricao,
                                  style: TextStyle(
                                      color: selecionado ? Colors.white : Grey1,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10)),
                            ),
                            new Padding(
                              padding: EdgeInsets.all(1),
                              child: CupertinoSwitch(
                                value: false,
                                onChanged: (bool value) {},
                                activeColor: selecionado
                                    ? ColorSecondary
                                    : ColorSecondary,
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

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            selectedItemColor: ColorPrimary,
            unselectedItemColor: Grey1,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.timeline),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                title: Text(""),
              )
            ],
          ),
  }
}