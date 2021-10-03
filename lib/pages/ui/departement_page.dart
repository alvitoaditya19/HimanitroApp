import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profjur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              }),
          title: Text(
            "Dept. Profjur",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/profjur.png"))),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nProfjur",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen PROFJUR (Profesionalisme Jurusan) adalah departemen yang bertujuan sebagai sarana untuk meningkatkan pengetahuan, kemampuan, dan keterampilan dalam keelektroan.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. Pelatihan Mahasiswa Baru",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. Komunitas Riset",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. Bank Soal",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "4. Pengabdian Masyarakat",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "5. Perlombaan Ke-Elektroan",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Mikat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {     Navigator.of(context).pop();}),
          title: Text(
            "Dept. Mikat",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/mikat.png"))),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nMinat dan Bakat",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen MIKAT (Minat dan Bakat) adalah departemen yang bertujuan untuk menyelenggarakan kegiatan yang dapat membantu anggotanya dalam rangka menyalurkan dan meningkatkan bakat serta minat anggota HIMANITRO.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. Latihan Rutin",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. Pekan Olahraga dan Seni antar kelas(PORAK)",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. Pendakian bersama Teknik Elektro(PBTE)",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "4. Malam Keakraban Teknik Elektro(MAKARET)",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Wirus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {

                     Navigator.of(context).pop();
              }),
          title: Text(
            "Dept. Wirus",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/wirus.png"))),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nKewirausahaan",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen KEWIRAUSAHAAN adalah departemen yang bertujuan untuk menumbuhkan sikap kewirausahaan pada mahasiswa teknik elektro, mengembangkan jiwa kewirausahaan mahasiswa teknik elektro dan menciptakan kemandirian ekonomi di organisasi.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                









                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. Jaket",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. Jaslab",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. Atribut",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "4. Katering",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "5. Aksesoris",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
       
                 Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "6. Warung Elektro",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "7. Elektro Digital Marketing",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "8. Wisuda",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "9. Reseller",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "10. Sponsorship",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                    Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "11. Seminar Kewirausahaan",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),

              ],            ),
          ),
        ));
  }
}

class Pao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {Navigator.of(context).pop();}),
          title: Text(
            "Dept. PAO",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/pao.png"))),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nPengembangan Aparatur Organisasi",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen PAO ( Pengembangan Aparatur Organisasi) Bertujuan Untuk menjaga stabilitas Organisasi demi tercapainya Tujuan Organisasi.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                






                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. Pelantikan",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. Rapat Kerja dan Pleno Tengah",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. Pelatihan kepemimpinan dan upgrading",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "4. Mata solder 2020",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "5. Musyawarah Komisariat",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
       
                 Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "6. Diskusi Produk Hukum dan Organisasi",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "7. Bulan Apresiasi",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
 
              ],             ),
          ),
        ));
  }
}

class Kerohanian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {Navigator.of(context).pop();}),
          title: Text(
            "Dept. Kerohanian",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/rohani.png"))),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nKerohanian",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen Kerohanian yang memiliki tujuan agar HIMANITRO dapat menyelenggarakan kegiatan yang bersifat keislaman dalam rangka mewujudkan mahasiswa yang bermoral dan religius.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
               





                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. TASBIH",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. PAMFLET",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. Kajian Online",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "4. Pelatihan MABA",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "5. Pelatihan Tahfidz",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
       
                 Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "6. PHBI",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                          ],
            ),
          ),
        ));
  }
}

class Advokom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {Navigator.of(context).pop();}),
          title: Text(
            "Dept. Advokom",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/adfokom.png"))),
                ),
                Center(
                  child: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nAdvokom",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
  Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen Adfokom(Adfokasi, Informasi, dan Komunikasi) adalah departemen yang bertujuan untuk mengadvokasi, menampung, menyalurkan dan menyampaikan aspirasi baik informasi internal maupun eksternal HIMANITRO.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
               






                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. Publikasi",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. Dokumentasi",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. HIMANITRO Talks",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "4. Audiensi",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "5. Relasi",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
       
                 Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "6. Studi Banding",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "7. Website",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "8. Deain",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
       
                 Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "9. Foto Pengurus",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}





class Sosmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          leading: new IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 32,
              color: Colors.black,
              onPressed: () {Navigator.of(context).pop();}),
          title: Text(
            "Dept. Sosmas",
            style: GoogleFonts.poppins().copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height:200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/sosmas.png"))),
                ),
                Center(
                  child: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Departement \nSosial Masyarakat",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                  Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "Departemen SOSMAS (Sosial Masyarakat) adalah departemen yang bertujuan untuk menumbuhkan jiwa sosial, dan nasionalisme mahasiswa Teknik Elektro, menumbuhkan kepekaan terhadap lingkungan sosial, dan menumbuhkan sikap peduli terhadap sesama.",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
               

                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                      "Program Kerja",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
               Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "1. Donasi/Bakti Sosial",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "2. Wisudaan",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Text(
                    "3. Himadik (HIMANITRO Mendidik)",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "4. CHARITY DAY",
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                 ],
            ),
          ),
        ));
  }
}
