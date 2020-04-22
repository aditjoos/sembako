import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sembako/components/ContainerAndButtons.dart';
import 'package:sembako/other/const.dart';
import 'package:sembako/pages/Admin/DetailPesanan.dart';
import 'package:sembako/pages/Admin/LihatKtpPemesan.dart';

class DaftarPesananPage extends StatefulWidget {
  @override
  _DaftarPesananPageState createState() => _DaftarPesananPageState();
}

class _DaftarPesananPageState extends State<DaftarPesananPage> {
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
                  Text('Daftar Pesanan', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Const().textColorDark),),
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
                      UserPesanContainer(
                        imgUrl: '',
                        namaPemesan: 'Nama Pemesan',
                        emailPemesan: 'nama.pemesan@aditjoos.github.io',
                        onTapPesanan: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPesananPage())),
                      ),
                      UserPesanContainer(
                        imgUrl: '',
                        namaPemesan: 'Nama Pemesan',
                        emailPemesan: 'nama.pemesan@aditjoos.github.io',
                        onTapPesanan: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPesananPage())),
                      ),
                      UserPesanContainer(
                        imgUrl: '',
                        namaPemesan: 'Nama Pemesan',
                        emailPemesan: 'nama.pemesan@aditjoos.github.io',
                        onTapPesanan: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPesananPage())),
                      ),
                      UserPesanContainer(
                        imgUrl: '',
                        namaPemesan: 'Nama Pemesan',
                        emailPemesan: 'nama.pemesan@aditjoos.github.io',
                        onTapPesanan: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPesananPage())),
                      ),
                      UserPesanContainer(
                        imgUrl: '',
                        namaPemesan: 'Nama Pemesan',
                        emailPemesan: 'nama.pemesan@aditjoos.github.io',
                        onTapPesanan: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => DetailPesananPage())),
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

class UserPesanContainer extends StatelessWidget {
  UserPesanContainer({this.onTapPesanan, this.imgUrl, this.namaPemesan, this.emailPemesan});

  final VoidCallback onTapPesanan;
  final String imgUrl;
  final String namaPemesan;
  final String emailPemesan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: MyContainer(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Const().accentColorLight,
            child: Icon(LineIcons.user, color: Colors.white,),
          ),
          title: Text(namaPemesan),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(emailPemesan),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => LihatKtpPage())),
                        borderRadius: BorderRadius.circular(25.0),
                        splashColor: Colors.black26,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          child: Row(
                            children: <Widget>[
                              Text('KTP ', style: TextStyle(color: Colors.white),),
                              Icon(LineIcons.eye, color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: Const().accentColorLight,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: onTapPesanan,
                        borderRadius: BorderRadius.circular(25.0),
                        splashColor: Colors.black26,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          child: Row(
                            children: <Widget>[
                              Text('Pesanan', style: TextStyle(color: Colors.white),),
                              Icon(LineIcons.angle_right, color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          dense: true,
        ),
      ),
    );
  }
}