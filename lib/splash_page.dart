import 'package:flutter/material.dart';
import 'const.dart';
import 'home_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold adalah kelas yang dianalogikan sebagai kertas kosong
    return Scaffold(
      // Menghindari overflow di aplikasi
      resizeToAvoidBottomInset: false,
      // Parameter yang digunakan sebagai isi dari kertas tersebut
      body: Container(
        // EdgeInsets Symmeetric berguna untuk memberi jarak secara vertical/ horizontal
        margin: EdgeInsets.symmetric(horizontal: kHorizontalMargin),
        child: Column(
          // berguna agar besar column sesuai dengan parentnya
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget untuk menampilkan text
            Text(
              "DSC Flutter Weekly",
              // Mengatur agar di tengah
              textAlign: TextAlign.center,
              /*
              Copywith adalah property yang memungkinkan kita untuk mengakses
              property yang ada di textstyle tanpa mengubah properti basicnya
              */
              style: kBlackTextStyle.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 32.0),
            ),
            // Berguna untuk menampilkan gambar yang berasal dari folder images
            Image(
              height: 250,
              image: AssetImage("images/logo.png"),
            ),
            SizedBox(
              height: 75,
            ),
            // Widget untuk menampilkan tombol go to home page
            RaisedButton(
              // Mengatur shape dari button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: kAccentColor1,
              // Isi dari button
              child: Padding(
                // Mengatur jarak yang berada dalam tombol
                padding: const EdgeInsets.all(10.0),
                // Isi button
                child: Text(
                  "Go to Home Page",
                  style: kWhiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {
                // Method akan dijalankan ketika user mengeklik tombol
                // Berguna untuk navigasi antar halaman
                Navigator.push(
                  context,
                  // Berguna untuk menentukan rute halaman yang akan dituju
                  MaterialPageRoute(
                    // Mengirim data menggunakan constructor class HomePage
                    builder: (context) => HomePage(
                      yourName: "Oribe Risa",
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
