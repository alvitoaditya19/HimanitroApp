part of 'pages.dart';

class Kabinet extends StatefulWidget {
  @override
  _KabinetState createState() => _KabinetState();
}

class _KabinetState extends State<Kabinet> {
  @override
  Widget build(BuildContext context) {
    context
        .bloc<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor1)));
  Widget button(int index, String title, String gambar, var halaman) {
    return GestureDetector(
      onTap: (){
           Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => halaman
                ),
              );
      },
          child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 6, right: 6, bottom: 30),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                height: 150,
                width: 156,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Color(0xff41C4FC),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff999999),
                      spreadRadius: 4,
                      blurRadius: 16,
                      offset: Offset(0, 8), // changes position of shadow
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset(
                      gambar,
                      height: 95,
                      width: 95,
                    )),
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ShaderMask(
              shaderCallback: (rectangle) {
                return LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.transparent
                    ]).createShader(Rect.fromLTRB(0, 0, 77.5, 80));
              },
              blendMode: BlendMode.dstIn,
              child: SizedBox(
                height: 140,
                width: 140,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    child: Image.asset("assets/reflection2.png")),
              ),
            ),
            Shimmer(
              period: Duration(seconds: 4),
              gradient: LinearGradient(
                  begin: Alignment(-0.1, 1),
                  end: Alignment(0.5, -1),
                  stops: [
                    0.4,
                    0.5,
                    0.6
                  ],
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0)
                  ]),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ShaderMask(
                shaderCallback: (rectangle) {
                  return LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.transparent
                      ]).createShader(Rect.fromLTRB(0, 0, 96, 45));
                },
                blendMode: BlendMode.dstIn,
                child: SizedBox(
                  height: 150,
                  width: 156,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset("assets/reflection1.png")),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ShaderMask(
                shaderCallback: (rectangle) {
                  return LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.transparent
                      ]).createShader(Rect.fromLTRB(0, 0, 53, 25));
                },
                blendMode: BlendMode.dstIn,
                child: SizedBox(
                  height: 150,
                  width: 156,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset("assets/reflection1.png")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToMainPage());

          return;
        },
        child: Scaffold(
          backgroundColor: Color(0xFFe6f7ff),
          body: SingleChildScrollView(
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 58),
                  Center(
                    child: Text(
                      "Kabinet Reactor",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/images/reactor.png',
                    height: 158,
                    width: 136,
                  )),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Departemen Himpunan",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          button(0, "Departemen Profjur",
                              'assets/images/profjur.png', Profjur()),
                          button(
                              1, "Departemen Mikat", 'assets/images/mikat.png', Mikat()),
                          button(
                              2, "Departemen Wirus", 'assets/images/wirus.png', Wirus()),
                          button(3, "Departemen PAO", 'assets/images/pao.png', Pao()),
                          button(4, "Departemen Kerohanian",
                              'assets/images/rohani.png', Kerohanian()),
                          button(5, "Departemen Advokom",
                              'assets/images/adfokom.png', Advokom()),
                          button(6, "Departemen Sosmas",
                              'assets/images/sosmas.png', Sosmas())
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Visi",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 20, bottom: 7),
                    child: Text(
                      "Terwujudnya HIMANITRO yang kolaboratif dan konstruktif sebagai wadah partisipatif dalam menghadirkan solusi bagi Mahasiswa Teknik Elektro UIN SGD Bandung.",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: Text(
                      "Kolaboratif : ",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: Text(
                      "Melibatkan peran aktif anggota dalam gerakan,pengabdian,pelayanan serta pengembangan baik di internal maupun eksternal kampus",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: Text(
                      "Konstruktif : ",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: Text(
                      "Membangun internal Organisasi yang solid, Sinergis dan solutif sehingga membangun etos kerja yang menunjang totalitas dalam bekerja",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Misi",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 7),
                  Center(
                    child: Text(
                      "VIP (Visioner,Intitusional,Profesional)",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 20, bottom: 7),
                    child: Text(
                      "1. Visioner; Memberikan pelayanan terbaik dan manfaat berkelanjutan dalam rangka pemenuhan kebutuhan dan hajat hidup sebagai Mahasiswa Teknik Elektro UIN SGD Bandung",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: Text(
                      "2. Institusional; Mewadahi dan memfasilitasi pengembangan minat-bakat serta memingkatkan prestasi dan daya saing Mahasiswa Teknik Elektro UIN SGD Bandung",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 16),
                    child: Text(
                      "3. Profesional; Menanamkan akar nilai dan budaya Teknik Elektrk dalam kehidupan organisasi dengan harapan memberikan nilai tambah yang optimal kepada seluruh fungsionaris",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
               SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 36,
                    color: Colors.black,
                    onPressed: () {
                      context.bloc<PageBloc>().add(GoToMainPage());
                    }),
              ),
            ),
            ]),
          ),
        ));
  }
}
