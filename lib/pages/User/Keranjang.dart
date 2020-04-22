import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/ContainerAndButtons.dart';
import 'package:sembako/components/Dialogs.dart';
import 'package:sembako/other/const.dart';

class KeranjangPage extends StatefulWidget {
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {

  int totalPesan = 1;

  @override
  void initState() {
    super.initState();
    totalPesan = 1;
  }

  void hapusPesananSembako(int idBarang) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => FunkyDialog(
        Center(
          child: Padding(padding: EdgeInsets.only(top: 15.0), child: Text('Yakin hapus pesanan?'),),
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

  bool showPesanBottomSheet = false;

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
                        Text('Keranjang Sembako', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Const().accentColorLight,
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              onPressed: () => showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) => FunkyDialog(
                                  Center(
                                    child: Padding(padding: EdgeInsets.only(top: 15.0), child: Text('Proses pesan sembako sekarang?'),),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        FlatButton(onPressed: () => Navigator.pop(context), child: Text('Tidak')),
                                        FlatButton(onPressed: () => Navigator.pop(context), child: Text('Ya')),
                                      ],
                                    ),
                                  ),
                                  MainAxisSize.min
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Proses Pesan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ),
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
                            PesananSembakoContainer(
                              onTapDelete: () => hapusPesananSembako(1),
                              onTapEdit: (){
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              imageUrl: 'assets/png/beras.png',
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              pesananSembako: 'Dipesan : 5',
                            ),
                            PesananSembakoContainer(
                              onTapDelete: () => hapusPesananSembako(1),
                              onTapEdit: (){
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              imageUrl: 'assets/png/beras.png',
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              pesananSembako: 'Dipesan : 5',
                            ),
                            PesananSembakoContainer(
                              onTapDelete: () => hapusPesananSembako(1),
                              onTapEdit: (){
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              imageUrl: 'assets/png/beras.png',
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              pesananSembako: 'Dipesan : 5',
                            ),
                            PesananSembakoContainer(
                              onTapDelete: () => hapusPesananSembako(1),
                              onTapEdit: (){
                                setState(() {
                                  totalPesan = 1;
                                  showPesanBottomSheet = true;
                                });
                              },
                              imageUrl: 'assets/png/beras.png',
                              titleSembako: 'Beras C4 Super',
                              deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                              pesananSembako: 'Dipesan : 5',
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
        ],
      )
    );
  }
}

class PesananSembakoContainer extends StatelessWidget {
  PesananSembakoContainer({this.onTapDelete, this.onTapEdit, this.imageUrl, this.titleSembako, this.deskripsiSembako, this.pesananSembako});

  final VoidCallback onTapDelete;
  final VoidCallback onTapEdit;
  final String imageUrl;
  final String titleSembako;
  final String deskripsiSembako;
  final String pesananSembako;

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(pesananSembako),
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