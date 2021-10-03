part of 'pages.dart';

class TEPage extends StatefulWidget {
  @override
  _TEPageState createState() => _TEPageState();
}

class _TEPageState extends State<TEPage> {
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
                "Teknik Elektro",
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
                              image: AssetImage("assets/ee-uin.png"))),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 25, bottom: 16),
                        child: Text(
                          "Sejarah Teknik Elektro",
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
                        "Jurusan Teknik Elektro UIN Sunan Gunung Djati Bandung  berdiri pada tahun 2006 dengan mulai menerima mahasiswa baru tahun ajaran (TA) 2008/2009. Pada tahun pertama berdiri, kurikulum jurusan teknik elektro memiliki satu konsentrasi yaitu elektro telekomunikasi. Pada tahun 2015, dilakukan peninjauan kurikulum yang menghasilkan kurikulum baru yang tidak mengarah khusus ke satu konsentrasi. Peminatan mahasiswa dibebaskan dengan memilih mata kuliah pilihan yang disajikan. Pada awal berdiri jurusan teknik Elektro, jurusan hanya mempunyai  satu orang dosen tetap yang sesuai keahlian dan empat dosen tetap MKDU. Pada tahun 2009 direkrut dua dosen tetap, sehingga jumlah dosen tetap sesuai  keahlian terdapat 3 orang. Pada tahun 2016 jumlah dosen tetap sesuai keahlian terdapat 6 orang dengan 7 dosen tetap MKDU.",
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
                          "Visi Teknik Elektro",
                          style: GoogleFonts.poppins().copyWith(
                            color:Colors.black,
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
                        "Menjadi Program Studi Teknik Elektro yang unggul dan kompetitif di ASEAN pada tahun 2025 berbasis wahyu memandu ilmu dalam bingkai akhlak karimah",
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
                          "Misi Teknik Elektro",
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
                        "1. Menyelenggarakan dan mengelola pendidikan tinggi di bidang teknik elektro secara profesional, mengikuti perkembangan jaman, akuntable, didukung dengan akhlak karimah sehingga berdaya saing di tingkat nasional dan ASEAN. \n2. Mengembangkan dan menyebarkan penelitian di bidang teknik elektro yang mampu memberikan kontribusi bagi ilmu pengetahuan dan masyarakat. \n3. Menyelenggarakan pengabdian kepada masyarakat dalam bidang teknik elektro yang mampu mengembangkan potensi kearifan lokal bagi kemandirian dan peningkatan daya saing masyarakat. \n4. Mengembangkan dan membina jejaring dengan berbagai lembaga pendidikan, penelitian dan industri.",
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
                          "Tujuan Teknik Elektro",
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
                          "1. Menyelenggarakan dan mengelola pendidikan tinggi di bidang teknik elektro secara profesional, mengikuti perkembangan jaman, akuntable, didukung dengan akhlak karimah sehingga berdaya saing di tingkat nasional dan ASEAN. \n2. Mengembangkan dan menyebarkan penelitian di bidang teknik elektro yang mampu memberikan kontribusi bagi ilmu pengetahuan dan masyarakat. \n3. Menyelenggarakan pengabdian kepada masyarakat dalam bidang teknik elektro yang mampu mengembangkan potensi kearifan lokal bagi kemandirian dan peningkatan daya saing masyarakat. \n4. Mengembangkan dan membina jejaring dengan berbagai lembaga pendidikan, penelitian dan industri.",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  ],
                ),
              ),
            )));
  }
}
