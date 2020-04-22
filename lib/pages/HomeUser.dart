import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/ContainerAndButtons.dart';
import 'package:sembako/components/Dialogs.dart';
import 'package:sembako/other/const.dart';
import 'package:sembako/pages/User/Keranjang.dart';

class HomeUserPage extends StatefulWidget {
  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  
  int totalPesan = 1;

  @override
  void initState() {
    super.initState();
    totalPesan = 1;
  }

  bool showPesanBottomSheet = false;
  bool menuOpened = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Const().accentColorLight,
                                borderRadius: BorderRadius.circular(15.0)
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => KeranjangPage())),
                                  borderRadius: BorderRadius.circular(25.0),
                                  splashColor: Colors.black26,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                    child: Row(
                                      children: <Widget>[
                                        Text('Barang di keranjang : 1', style: TextStyle(color: Colors.white),),
                                        Icon(LineIcons.shopping_cart, color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(icon: Icon(Icons.dehaze), onPressed: () {
                              setState(() {
                                menuOpened = true;
                              });
                            })
                          ],
                        )
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
                        padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                        child: Column(
                          children: <Widget>[
                            UserSembakoContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTap: () {
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            UserSembakoContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTap: () {
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            UserSembakoContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTap: () {
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            UserSembakoContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTap: () {
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          showPesanBottomSheet ? Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onVerticalDragDown: (update) => setState(() => showPesanBottomSheet = false),
                    onTap: () => setState(() => showPesanBottomSheet = false),
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Batal'),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => setState(() => showPesanBottomSheet = false),
                              borderRadius: BorderRadius.circular(25.0),
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(LineIcons.close),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 150.0,
                            height: 150.0,
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
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('Beras C4 Super', style: TextStyle(fontWeight: FontWeight.bold, color: Const().textColorDark),),
                                  Material(
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        IconButton(icon: Icon(LineIcons.minus), onPressed: () {
                                          setState(() {
                                            if (totalPesan > 1) totalPesan = totalPesan - 1;
                                          });
                                        }),
                                        Text(totalPesan.toString()),
                                        IconButton(icon: Icon(LineIcons.plus), onPressed: () {
                                          setState(() {
                                            totalPesan = totalPesan + 1;
                                          });
                                        }),
                                      ],
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {
                                      setState(() => showPesanBottomSheet = false);
                                      showDialog(
                                        barrierDismissible: true,
                                        context: context,
                                        builder: (BuildContext context) => FunkyOverlay(
                                          'Pesanan berhasil dimasukkan keranjang, cek keranjangmu.',
                                          [FlatButton(onPressed: () => Navigator.pop(context), child: Text('OK'))]
                                        )
                                      );
                                    },
                                    child: Text('Selesai', style: TextStyle(color: Colors.white),),
                                    color: Const().accentColorLight,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ) : Container(),
          menuOpened ? Positioned.fill(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white,
                  child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10.0),
                              child: Text('Edit KTP dan nomor HP'),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10.0),
                              child: Text('Riwayat pemesanan'),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('Tutup'),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => setState(() => menuOpened = false),
                                borderRadius: BorderRadius.circular(25.0),
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(LineIcons.close),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => menuOpened = false),
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ) : Container()
        ],
      ),
    );
  }
}

class UserSembakoContainer extends StatelessWidget {
  UserSembakoContainer({this.onTap, this.imageUrl, this.titleSembako, this.deskripsiSembako, this.stokSembako});

  final VoidCallback onTap;
  final String imageUrl;
  final String titleSembako;
  final String deskripsiSembako;
  final String stokSembako;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyContainer(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: Image.asset(imageUrl),
                ),
              ),
              Flexible(
                child: Container(
                  // height: 100.0,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(titleSembako, style: TextStyle(fontWeight: FontWeight.bold, color: Const().textColorDark),),
                          Text(
                            deskripsiSembako,
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
                          Text(stokSembako),
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
                                onTap: onTap,
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
    );
  }
}