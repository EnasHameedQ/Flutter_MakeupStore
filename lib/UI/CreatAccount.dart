import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:makeupstore/UI/Login.dart';
import 'FadeAnimation.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.pink[400],
                  Colors.amber[200],
                  Colors.pink[100],
                  Colors.amber[100],
                  Colors.pink[200],
                  Color.fromRGBO(250, 237, 183 ,.5),
                ]
            )
        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            SizedBox(height:50,),

            Padding(
              padding: EdgeInsets.only(left: 60.0,top: 10.0),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //  headerBuild(),

                  FadeAnimation(1, Text("Creat Yor Account", style: TextStyle(color: Colors.white, fontSize: 40),) ),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome to our store", style: TextStyle(color: Colors.white, fontSize: 18),)),
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            child: Image.asset(
                              "assets/images/makeup.gif",
                              fit: BoxFit.fill,
                            ))
                      ],
                    ),
                  ),
                ],

              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(250, 237, 183 ,.5),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "first name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "last name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Check Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )),
                        SizedBox(height: 40,),
                        FadeAnimation(1.6, Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.pink[100],
                          ),

                          child: GestureDetector(
                            onTap: (){Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => LoginPag()));},
                            child: Center(
                                child: FadeAnimation(1.7,Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),),
                                )),
                          ),
                        )),
                        SizedBox(height: 50,),

                          ],
                        )

                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
// ضبط الالوان+ باقي نضيف دالة الانتقال الى الصفحة+اضافة الصور
headerBuild() {
  return Column(
      children: <Widget>[

        Container (
          height:100.0,
          width: 200.0,
          margin: EdgeInsets.only(right: 5.0,left: 200.0),
          child: CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
                "https://good-morning.cc/wp-content/uploads/2019/06/1027.jpg"),
          ),
        ),

      ]
  );
}