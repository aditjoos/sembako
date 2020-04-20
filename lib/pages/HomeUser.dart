import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/ContainerAndButtons.dart';
import 'package:sembako/components/Dialogs.dart';
import 'package:sembako/other/const.dart';

class HomeUserPage extends StatefulWidget {
  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(LineIcons.close), onPressed: () => showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => FunkyDialog(
                          Center(
                            child: Padding(padding: EdgeInsets.only(top: 15.0), child: Text('Yakin batal?'),),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FlatButton(onPressed: () => Navigator.pop(context), child: Text('Tidak')),
                                FlatButton(onPressed: (){
                                  for (var i = 0; i < 2; i++) {
                                    Navigator.pop(context);
                                  }
                                }, child: Text('Ya')),
                              ],
                            ),
                          ),
                          MainAxisSize.min
                        )
                      )),
                      Text('Batal')
                    ],
                  ),
                  IconButton(icon: Icon(Icons.dehaze), onPressed: (){})
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Daftar Sembako', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
                  Text('Lorem ipsum dolor sit amet', style: TextStyle(color: Const().textColorLight),),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      MyContainer(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Const().accentColorLight,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset('assets/png/beras.png'),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                height: 100.0,
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Beras C4 Super', style: TextStyle(fontWeight: FontWeight.bold, color: Const().textColorDark),),
                                        Text(
                                          '*deskripsi lorem ipsum dolor sit amet',
                                          style: TextStyle(color: Const().textColorLight),
                                          maxLines: 5,
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text('Stok : 10'),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Const().accentColorLight,
                                            borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius: BorderRadius.circular(5.0),
                                              splashColor: Colors.black26,
                                              onTap: () => showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (BuildContext context) => FunkyDialog(
                                                  Center(
                                                    child: Padding(padding: EdgeInsets.only(top: 15.0), child: Text('Under Construction'),),
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                      children: <Widget>[
                                                        FlatButton(onPressed: () => Navigator.pop(context), child: Text('Batal')),
                                                      ],
                                                    ),
                                                  ),
                                                  MainAxisSize.min
                                                )
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Text('Pesan', style: TextStyle(color: Colors.white),),
                                              )
                                            )
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
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