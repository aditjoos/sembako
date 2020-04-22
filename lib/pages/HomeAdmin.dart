import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/ContainerAndButtons.dart';
import 'package:sembako/components/Dialogs.dart';
import 'package:sembako/other/const.dart';
import 'package:sembako/pages/Admin/DaftarPesanan.dart';
import 'package:sembako/pages/Admin/StokEdit.dart';
import 'package:sembako/pages/Admin/StokTambah.dart';

class HomeAdminPage extends StatefulWidget {
  @override
  _HomeAdminPageState createState() => _HomeAdminPageState();
}

class _HomeAdminPageState extends State<HomeAdminPage> {

  void hapusSemuaStok(int idBarang) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => FunkyDialog(
        Center(
          child: Padding(padding: EdgeInsets.only(top: 15.0), child: Text('Yakin hapus seluruh stok?'),),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(onPressed: () => Navigator.pop(context), child: Text('Tidak')),
              FlatButton(onPressed: () => Navigator.pop(context), child: Text('Ya', style: TextStyle(color: Colors.white),), color: Colors.red[300],),
            ],
          ),
        ),
        MainAxisSize.min
      )
    );
  }

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
                        Container(
                          decoration: BoxDecoration(
                            color: Const().accentColorLight,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DaftarPesananPage())),
                              borderRadius: BorderRadius.circular(25.0),
                              splashColor: Colors.black26,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                child: Row(
                                  children: <Widget>[
                                    Text('Daftar pesanan : 5', style: TextStyle(color: Colors.white),),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Stok Sembako', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
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
                            StokSembakoAdminContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTapDelete: () => hapusSemuaStok(1), // <-- ID barang yang mu dihapus
                              onTapEdit: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StokEditPage())),
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            StokSembakoAdminContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTapDelete: () => hapusSemuaStok(1), // <-- ID barang yang mu dihapus
                              onTapEdit: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StokEditPage())),
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            StokSembakoAdminContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTapDelete: () => hapusSemuaStok(1), // <-- ID barang yang mu dihapus
                              onTapEdit: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StokEditPage())),
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            StokSembakoAdminContainer(
                              imageUrl: 'assets/png/beras.png',
                              onTapDelete: () => hapusSemuaStok(1), // <-- ID barang yang mu dihapus
                              onTapEdit: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StokEditPage())),
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              stokSembako: 'Stok : 10',
                            ),
                            SizedBox(height: 100.0,)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
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
                              child: Text('Ganti password'),
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
      floatingActionButton: !menuOpened ? FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => StokTambahPage())),
        backgroundColor: Const().accentColorLight,
        child: Icon(LineIcons.plus, color: Colors.white,),
      ) : null,
    );
  }
}

class StokSembakoAdminContainer extends StatelessWidget {
  StokSembakoAdminContainer({this.onTapDelete, this.onTapEdit, this.imageUrl, this.titleSembako, this.deskripsiSembako, this.stokSembako});

  final VoidCallback onTapDelete;
  final VoidCallback onTapEdit;
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
                          Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red[300],
                                  borderRadius: BorderRadius.circular(25.0)
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: onTapDelete,
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(LineIcons.trash, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5.0,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Const().accentColorLight,
                                  borderRadius: BorderRadius.circular(25.0)
                                ),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: onTapEdit,
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(LineIcons.pencil, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
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