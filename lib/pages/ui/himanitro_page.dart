part of 'pages.dart';

class HimanitroPage extends StatefulWidget {
  @override
  _HimanitroPageState createState() => _HimanitroPageState();
}

class _HimanitroPageState extends State<HimanitroPage> {
  @override
  Widget build(BuildContext context) {
    context
        .bloc<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor1)));

    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToMainPage());

          return;
        },
        child: Scaffold(
            backgroundColor: Color(0xFFe6f7ff),
            appBar: new AppBar(
              backgroundColor: Color(0xFFe6f7ff),
              centerTitle: true,
              leading: new IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 32,
                  color: Colors.black,
                  onPressed: () {
                    context.bloc<PageBloc>().add(GoToMainPage());
                  }),
              title: Text(
                "Himanitro",
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
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Container(
                      height: 145,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/13.png"))),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 25, bottom: 16),
                        child: Text(
                          "Sejarah Himanitro",
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
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Himpunan Mahasiswa Teknik Elektro yang selanjutnya disingkat HIMANITRO adalah organisasi kemahasiswaan ditingkat jurusan yang mempunyai hak otonom dan didirikan oleh Mahasiswa Jurusan Teknik Elektro Fakultas Sains dan Teknologi UIN Sunan Gunung Djati Bandung (Pasal 1 Anggaran Rumah Tangga HIMANITRO).",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "HIMANITRO didirikan di UIN Sunan Gunung Djati Bandung yang disahkan pada tanggal 26 Desember 2008 (Pasal 2 Anggaran Dasar HIMANITRO). HIMANITRO sendiri bertempat di Jurusan Teknik Elektro Fakultas Sains dan Teknologi kampus UIN Sunan Gunung Djati Bandung (Pasal 3 Anggaran Dasar HIMANITRO). HIMANITRO merupakan badan tinggi jurusan yang berkedudukan di tingkat jurusan (Pasal 4 Anggaran Dasar HIMANITRO).",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "HIMANITRO KBM UIN Sunan Gunung Djati Bandung berasaskan Pancasila (Pasal 5 Anggaran Dasar HIMANITRO). HIMANITRO KBM UIN Sunan Gunung Djati Bandung bersifat keagamaan, kemahasiswaan, kebangsaan, kemasyarakatan, independen, dan professional (Pasal 6 Anggaran Dasar HIMANITRO).",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Kedaulatan tertinggi ada ditangan mahasiswa jurusan Teknik Elektro Fakultas Sains dan Teknologi UIN Sunan Gunung Djati Bandung yang diwujudkan dalam musyawarah Komisariat (Pasal 10 Anggaran Dasar HIMANITRO).",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          "Tujuan Himanitro",
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
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "1. Tebentuknya pribadi mahasiswa Teknik Elektro yang bertakwa kepada allah SWT. \n2. Terbentuknya pribadi mahasiswa Teknik Elektro yang berbudi pekerti luhur, berilmu, cakap, dan bertanggung jawab dalam mengamalkan ilmunya. \n3. Terwujudnya mahasiswa Teknik Elektro yang berparadigma kritis transformatif dan mampu mengikuti perkembangan IPTEK. (Pasal 7 Anggaran Dasar HIMANITRO).",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: Text(
                          "Fungsi Himanitro",
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
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "1. Menampung, mengelola dan menyampaikan aspirasi mahasiswa jurusan Teknik Elektro. \n2. Melaksanakan kegiatan kemahasiswaan dalam berbagai bidang yang sesuai dengan asas dan tujuan HIMANITRO serta mewujudkan pribadi insan ulul albab. \n3. Sarana peningkatan kualitas mahasiswa JurusanTeknik Elektro.\n4. Wahana latihan berorganisasi.\n5. Wahana ukhuwah antara mahasiswa Teknik Elektro. (Pasal 8 Anggaran Dasar HIMANITRO).",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
