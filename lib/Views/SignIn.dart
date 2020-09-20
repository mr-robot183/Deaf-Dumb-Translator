import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        width: queryData.size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.red[900],
              Colors.red[500],
              Colors.red[400],
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: queryData.size.height/9,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Sign In", style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 10,),
                      Text("Welcome Back!", style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                Container(
                  width: queryData.size.width/3,
                  height: queryData.size.height/10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomLeft: Radius.circular(60)
                    )
                  ),
                  child: Center(
                    child: Text("Sign Up  >", style: GoogleFonts.raleway(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
