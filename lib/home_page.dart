import 'package:flutter/material.dart';
import 'const.dart';

class HomePage extends StatefulWidget {
  // Membuat properti untuk kelas ini
  final String yourName;

  // Membuat constructor untuk menerima data
  HomePage({this.yourName});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Safe area adalah widget untuk menghindari kamera yg nyatu sama layar
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(kHorizontalMargin),
          child: Center(
            child: Column(
              children: [
                // Circle Avatar adalah sebuah widget untuk membuat gambar lingkaran
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  widget.yourName,
                  textAlign: TextAlign.center,
                  style: kBlackTextStyle.copyWith(
                    fontSize: 26,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Risa Oribe, lebih dikenal dengan nama panggung LiSA, adalah penyanyi, penulis lagu, dan penulis lirik Jepang yang berasal dari Seki, Gifu dan dikontrak untuk Aniplex di bawah Sony Music Artists. Setelah terinspirasi menjadi musisi di awal hidupnya, ia memulai karier musiknya sebagai vokalis band indie Chucky.",
                  style: kBlackTextStyle,
                  // Menjadikan text rata tengah
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
