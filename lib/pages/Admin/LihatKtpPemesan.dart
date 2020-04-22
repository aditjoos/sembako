import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/other/const.dart';

class LihatKtpPage extends StatefulWidget {
  @override
  _LihatKtpPageState createState() => _LihatKtpPageState();
}

class _LihatKtpPageState extends State<LihatKtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(LineIcons.arrow_left), onPressed: () => Navigator.pop(context)),
                      Text('Kembali')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lihat KTP Pemesan', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
                  Text('Nama Pemesan', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
                  Text('nama.pemesan@aditjoos.github.io', style: TextStyle(color: Const().textColorLight),),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset('assets/png/ktp.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}