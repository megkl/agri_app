import 'package:flutter/material.dart';
import 'package:agri/bloc.navigation_bloc/navigation_bloc.dart';

class HomePage extends StatelessWidget with NavigationState {
  @override
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0XFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState((){
            _bottomNavIndex = index;

          });
        },

        items: [
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.home)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.apps)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.notifications)
          )

        ],
      ),
      appBar: new AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
         ),
      body: MainContent(),
    );
  }

  void setState(Null Function() param0) {}
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Text(
                        "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tAGRI",
                        style: new TextStyle(
                          fontSize: 30.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  new SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  color: Color(0xFFFD7384)),
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Icon(
                                    Icons.attach_money,
                                    color: Colors.white,
                                  ),
                                  new Text("Total Expected\n\t\t\t\t\t\tReturns",
                                      style: new TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          )),
                      new Expanded(
                          child: new Container(
                            height: 100.0,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(bottom: 2.5, right: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Color(0XFF2BD093),
                                          borderRadius: new BorderRadius.circular(5.0)),
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.local_offer,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text('Types of \nfarms',
                                              style: new TextStyle(color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(top: 2.5, right: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Color(0XFFFC7B4D),
                                          borderRadius: new BorderRadius.circular(5.0)),
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.beenhere,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text('View Farms',
                                              style: new TextStyle(color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      new Expanded(
                          child: new Container(
                            height: 100.0,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(left: 2.5, bottom: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Color(0xFF1B5E20),//0XFF53CEDB
                                          borderRadius: new BorderRadius.circular(5.0)),
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.account_balance,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text('Farms\nInvestment',
                                              style: new TextStyle(color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 2.5, top: 2.5),
                                    child: new Container(
                                      decoration: new BoxDecoration(
                                          color: Color(0XFF53CEDB),//0XFFF1B069
                                          borderRadius: new BorderRadius.circular(5.0)),
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: new Icon(
                                              Icons.show_chart,
                                              color: Colors.white,
                                            ),
                                          ),
                                          new Text('View\nTransactions',
                                              style: new TextStyle(color: Colors.white))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                  new SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text("Available Farms",
                              style: new TextStyle(fontSize: 18.0))),
                      new Expanded(
                          child: new Text(
                            "View All",
                            style: new TextStyle(color: Color(0XFF2BD093)),
                            textAlign: TextAlign.end,
                          ))
                    ],
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                        child: Container(
                          height: 150.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/images/chicken.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  )
                              ),
                              new Text(
                                "Meg Chicken farm",
                                style: new TextStyle(fontSize: 16.0),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      new Expanded(
                        child: Container(
                          height: 150.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/images/tomato.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  )
                              ),
                              new Text("Ken Tomato farm ",
                                  style: new TextStyle(fontSize: 16.0),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      new Expanded(
                        child: Container(
                          height: 150.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/images/maize.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  )
                              ),
                              new Text('Leo Maize Farm',
                                  style: new TextStyle(fontSize: 16.0),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  new SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text("New Farms",
                              style: new TextStyle(fontSize: 18.0))),
                      new Expanded(
                          child: new Text(
                            "View All",
                            style: new TextStyle(color: Color(0XFF2BD093)),
                            textAlign: TextAlign.end,
                          ))
                    ],
                  ),
                  new SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      new Expanded(
                        child: Container(
                          height: 150.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/images/chicken.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  )
                              ),
                              new Text(
                                "Meg Chicken farm",
                                style: new TextStyle(fontSize: 16.0),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      new Expanded(
                        child: Container(
                          height: 150.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/images/maize.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  )
                              ),
                              new Text("Leo Maize Farms",
                                  style: new TextStyle(fontSize: 16.0),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      ),
                      new SizedBox(
                        width: 5.0,
                      ),
                      new Expanded(
                        child: Container(
                          height: 150.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                height: 100.0,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/images/tomato.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  )
                              ),
                              new Text('Ken Tomato farm',
                                  style: new TextStyle(fontSize: 16.0),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              )),
        )
      ],
    );
  }
}
