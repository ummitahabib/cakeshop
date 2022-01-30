import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'bottom_bar.dart';
import 'cookie_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
   late TabController _tabController;
   final colors = [Colors.transparent];
   late Color indicatorColor;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color:Color(0xFF545D68)),
            onPressed: (){},
          ),
          title: Text('Cake Shop',
            style: TextStyle(
                fontFamily: 'varela', fontSize: 20.0,
                color: Color(0xFF545D68)
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
              onPressed: () {}, )
          ]
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(height: 15.0,),
          Text('Categories',
            style: TextStyle(
                fontFamily:'Varela' ,
                fontWeight: FontWeight.bold,
                fontSize: 42.0
            ),),
          SizedBox(height: 15.0,),
          TabBar(controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Color(0xFFC88D67),
          isScrollable: true,
          labelPadding: EdgeInsets.only(right: 45.0),
          unselectedLabelColor: Color(0xFFCDCDCD),
          tabs: [
            Tab(
              child: Text('Cookies',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 21.0
              ),),
            ),
            Tab(
              child: Text('Cookie Cake',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0
                ),),
            ),
            Tab(
              child: Text('Ice cream',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0
                ),),
            ),
          ]),
          Container(
            height: MediaQuery.of(context).size.height - 2,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                CookiePage(),
                CookiePage(),
                CookiePage()
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

