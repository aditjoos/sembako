import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

import 'package:line_icons/line_icons.dart';
import 'package:sembako/other/const.dart';
import 'package:sembako/pages/HomeAdmin.dart';
import 'package:sembako/pages/HomeUser.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    // FirebaseUser firebaseUser = await firebaseAuth.signInWith
  }

  TextEditingController controllerUsername;
  TextEditingController controllerPassword = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      controller: controllerUsername,
      // initialValue: snapshot.hasData ? dbModel[0].user : "",
      obscureText: false,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final passwordField = TextField(
      controller: controllerPassword,
      obscureText: true,
      style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    // MAIN
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: SvgPicture.asset('assets/svg/login_illust.svg', height: 200.0,)),
            SizedBox(height: 30.0,),
            Text('Sembako', style: TextStyle(fontFamily: 'Montserrat', fontSize: 40.0, fontWeight: FontWeight.bold, color: Const().textColorDark)),
            Text('Beli sembako dengan mudah dalam genggaman.', style: TextStyle(fontFamily: 'Montserrat', color: Const().textColorLight),),
            SizedBox(height: 30.0,),
            Center(child: Text('Silahkan masuk untuk melanjutkan.', style: TextStyle(fontFamily: 'Montserrat', color: Const().textColorDark),)),
            SizedBox(height: 10.0,),
            LoginButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeUserPage())),
              color: Colors.red[300],
              text: 'Masuk dengan Google',
              icon: Icon(LineIcons.google, color: Colors.white,),
            ),
            SizedBox(height: 10.0,),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25.0),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeAdminPage())),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Saya Admin', style: TextStyle(fontFamily: 'Montserrat', color: Const().accentColorLight),),
                      Icon(LineIcons.user, color: Const().accentColorLight,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  LoginButton({this.onPressed, this.text, this.icon, this.color});

  final VoidCallback onPressed;
  final String text;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      // elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: color,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.white)),
            icon,
          ],
        ),
      ),
    );
  }
}
