import 'package:firebase_setup_web/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F2F5),
      body: SingleChildScrollView(
        child: ResponsiveWidget(
          desktop: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Masuk Aplikasi TikTok',
                    style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Color(0xff1877F2),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pertama-tama, instal aplikasi di TikTok di Play Store atau App Store. Setelah sukses menginstal, lanjutkan langkah berikutnya dengan masuk aplikasi TikTok.',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '2. Tekan Ikon Warna Kuning',
                    style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Color(0xff1877F2),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Langkah selanjutnya yaitu tekan ikon berwarna kuning yang terdapat pada bagian pojok atas. Dengan menekannya, itu artinya kamu bersedia mengikuti event TikTok tersebut.',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '3. Masukan Kode Undangan',
                    style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Color(0xff1877F2),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Jika sudah menekan ikon berwarna kuning, kamu bisa langsung memasukan kode undangan pada kolom yang tersedia dengan cara paste kode undangan. Selanjutnya, klik "konfirmasi"',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '4. Dapatkan Uang',
                    style: GoogleFonts.roboto(
                        fontSize: 26,
                        color: Color(0xff1877F2),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Setelah memasukan kode undangan, kamu sudah bisa memperoleh undang sebesar Rp600.000 yang akan masuk ke saldo TikTok milikmu.',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 150),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        'Create a Page',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' for a celebrity, band or business.',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ],
          ),
          mobile: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. Masuk Aplikasi TikTok',
                        style: GoogleFonts.roboto(
                            fontSize: 26,
                            color: Color(0xff1877F2),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pertama-tama, instal aplikasi di TikTok di Play Store atau App Store. Setelah sukses menginstal, lanjutkan langkah berikutnya dengan masuk aplikasi TikTok.',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2. Tekan Ikon Warna Kuning',
                        style: GoogleFonts.roboto(
                            fontSize: 26,
                            color: Color(0xff1877F2),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Langkah selanjutnya yaitu tekan ikon berwarna kuning yang terdapat pada bagian pojok atas. Dengan menekannya, itu artinya kamu bersedia mengikuti event TikTok tersebut.',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '3. Masukan Kode Undangan',
                        style: GoogleFonts.roboto(
                            fontSize: 26,
                            color: Color(0xff1877F2),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Jika sudah menekan ikon berwarna kuning, kamu bisa langsung memasukan kode undangan pada kolom yang tersedia dengan cara paste kode undangan. Selanjutnya, klik "konfirmasi"',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '4. Dapatkan Uang',
                        style: GoogleFonts.roboto(
                            fontSize: 26,
                            color: Color(0xff1877F2),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Setelah memasukan kode undangan, kamu sudah bisa memperoleh undang sebesar Rp600.000 yang akan masuk ke saldo TikTok milikmu.',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create a Page',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' for a celebrity, band or business.',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
