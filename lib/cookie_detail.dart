import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  CookieDetail ({
    this.assetPath,
    this.cookieprice,
    this.cookiename,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color:Color(0xFF545D68)),
            onPressed: (){
              Navigator.of(context).pop();
            },
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
        children: [
          SizedBox(height: 15.0,),
          Padding(padding: EdgeInsets.only(left: 20.0),
            child: Text('Dessert',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF17532)
              ),
            ),),
            SizedBox(height: 15.0,),
            Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain),
            ),
          SizedBox(height: 20.0,),
          Center(
            child: Text('\$3.99',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 24.0,
                  color: Color(0xFF575E67)
              ),
            ),),
            SizedBox(height: 10.0,),
        Center(
          child: Text('RedVelvet Cake',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 24.0,
                color: Color(0xFF575E67)
            ),
          ),),
          SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text('descriiption: Amet minim mollit non deserunt ullamco est sit aliqua dolordo amet sint. Velit officia consequat duis enim velit mollit',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 24.0,
                    color: Color(0xFF575E67)
                ),
              ),
            ),),
          SizedBox(height: 20.0,),
          Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Color(0xFFF17532)
            ),
            child: Center(
              child: Text('Add to cart',
              style:  TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
            ),
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
