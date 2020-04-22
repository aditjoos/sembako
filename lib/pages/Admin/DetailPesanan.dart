import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/ContainerAndButtons.dart';
import 'package:sembako/components/Dialogs.dart';
import 'package:sembako/other/const.dart';

class DetailPesananPage extends StatefulWidget {
  @override
  _DetailPesananPageState createState() => _DetailPesananPageState();
}

class _DetailPesananPageState extends State<DetailPesananPage> {
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
                  Text('Nama Pemesan', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
                  Text('nama.pemesan@aditjoos.github.io', style: TextStyle(color: Const().textColorLight),),
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
                              child: Padding(padding: EdgeInsets.only(top: 15.0), child: Text('Konfirmasi seluruh pesanan?'),),
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
                            Text('Konfirmasi Pesanan',
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
                        imageUrl: 'assets/png/beras.png',
                        titleSembako: 'Beras C4 Super',
                        deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                        stokSembako: 'Stok : 10',
                        pesananSembako: 'Dipesan : 5',
                      ),
                      PesananSembakoContainer(
                        imageUrl: 'assets/png/beras.png',
                        titleSembako: 'Beras C4 Super',
                        deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                        stokSembako: 'Stok : 10',
                        pesananSembako: 'Dipesan : 5',
                      ),
                      PesananSembakoContainer(
                        imageUrl: 'assets/png/beras.png',
                        titleSembako: 'Beras C4 Super',
                        deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                        stokSembako: 'Stok : 10',
                        pesananSembako: 'Dipesan : 5',
                      ),
                      PesananSembakoContainer(
                        imageUrl: 'assets/png/beras.png',
                        titleSembako: 'Beras C4 Super',
                        deskripsiSembako: '*deskripsi lorem ipsum dolor sit amet',
                        stokSembako: 'Stok : 10',
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
    );
  }
}

class PesananSembakoContainer extends StatelessWidget {
  PesananSembakoContainer({this.imageUrl, this.titleSembako, this.deskripsiSembako, this.stokSembako, this.pesananSembako});

  final String imageUrl;
  final String titleSembako;
  final String deskripsiSembako;
  final String stokSembako;
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
                          Text(stokSembako),
                          Text(pesananSembako),
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