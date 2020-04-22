import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/Dialogs.dart';
import 'package:sembako/other/const.dart';

class StokTambahPage extends StatefulWidget {
  @override
  _StokTambahPageState createState() => _StokTambahPageState();
}

class _StokTambahPageState extends State<StokTambahPage> {
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Tambah Sembako', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
                  Text('Lorem ipsum dolor sit amet', style: TextStyle(color: Const().textColorLight),),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          color: Const().accentColorLight,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset('assets/png/beras.png')
                              ),
                            ),
                            Positioned(
                              top: 10.0,
                              right: 10.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15.0)
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: (){},
                                    borderRadius: BorderRadius.circular(25.0),
                                    splashColor: Colors.black26,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('Ganti foto ', style: TextStyle(color: Colors.white),),
                                          Icon(LineIcons.camera, color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        // controller: controllerUsername,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          hintText: "Judul",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        // controller: controllerUsername,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          hintText: "Deskripsi",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        // controller: controllerUsername,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                          hintText: "Jumlah Stok",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Const().accentColorLight,
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Selesai',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0,),
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