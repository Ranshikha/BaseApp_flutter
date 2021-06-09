import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
    print(counter);
  }

  void decrement() {
    setState(() {
      counter--;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: Drawer(
        //     child: Column(
        //   children: [
        //     MaterialButton(
        //       onPressed: () {},
        //       child: Text("Button1"),
        //     ),
        //     MaterialButton(
        //       onPressed: () {},
        //       child: Text("Button2"),
        //     ),
        //   ],
        // )),
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Container(
          color: Colors.cyan.shade50,
          child:
              Center(child: Text("$counter", style: TextStyle(fontSize: 30))),
        ),
        /*BottomNavigationBar has more properties than BottomAppBar
        BottomAppBar is used for Costumized BottomNavigation Bar*/
        // bottomNavigationBar: BottomAppBar(
        //     child: Container(
        //   width: 400,
        //   height: 50,
        //   color: Colors.blue,
        // )),
        floatingActionButton: Container(
          width: 100,
          height: 100,
/*For Overflow condition we use physics under 'ListView' */
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: increment,
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: decrement,
              ),
            ],
          ),

          // bottomNavigationBar:
          //     BottomNavigationBar(backgroundColor: Colors.amber.shade50, items: [
          //   BottomNavigationBarItem(
          //       icon: Icon(Icons.access_time_filled_outlined), label: "Home"),
          //   BottomNavigationBarItem(
          //       icon: Icon(Icons.access_time_filled_outlined), label: "Home"),
          // ]),
        ));
  }
}
