import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LogingScreenState createState() => _LogingScreenState();
}

Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0,2)
            )
  ]
        ),
        height: 65,
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
            color: Colors.black87),
            decoration: InputDecoration(
            border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                Icons.email,
                color: Color(0xff55118BB),
                ),
                hintText: "Enter your email",
                hintStyle: TextStyle(
                color: Colors.black38,
              )
          )
        ),
        ),
    ],
  );
}

Widget buidPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:[
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 65,
        child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff55118B),
                ),
                hintText: "Enter your password",
                hintStyle: TextStyle(
                  color: Colors.black38,
                )
            )
        ),
      ),
    ],
  );
}

class _LogingScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
        child: Stack(
              children: <Widget> [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 125
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        'Join',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50,),
                      buildEmail(),
                      SizedBox(height: 21),
                      buidPassword(),
                    ],
                  ),
                )
                )
              ]
            ),
        ),
      )
    );
  }
}