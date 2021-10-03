part of 'pages.dart';

class MatkulPage extends StatefulWidget {
  final bool isExpiredTicket;

  MatkulPage({this.isExpiredTicket = false});

  @override
  _MatkulPageState createState() => _MatkulPageState();
}

class _MatkulPageState extends State<MatkulPage>
    with SingleTickerProviderStateMixin {
  bool isExpiredTickets;

  @override
  void initState() {
    super.initState();

    isExpiredTickets = widget.isExpiredTicket;
  }

  bool showFab = true;

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
            body: Stack(children: <Widget>[
              //Mata Kuliah
              Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 195,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(50),
                        ),
                        color: accentColor1,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 5),
                            SizedBox(
                                height: 90,
                                child: Image.asset("assets/mk.png")),
                            Text(
                              "Mata Kuliah",
                              style: GoogleFonts.poppins().copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 30,
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Text(
                                  "Informasi Mata kuliah \nTeknik Elektro UIN Bandung",
                                  style: GoogleFonts.poppins().copyWith(
                                    color: Color(0xFFADADAD),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Container(
                                height: 4,
                                width: MediaQuery.of(context).size.width * 0.75,
                                color: accentColor2)
                          ]),
                    ),
                    SizedBox(height: 8),
                    // Semester 1
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no1.jpg",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 1",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Bahasa Indonesia',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Bahasa Arab',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Ulumul Quran',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kalkulus 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Fisika Dasar 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Fisika Dasar 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Elektronika 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Elektronika 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kimia Dasar 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Kimia Dasar 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pengantar Teknologi Informasi',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(height: 4),
                    // Semester 2
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no2.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 2",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Bahasa Inggris',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kalkulus 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Fisika Dasar 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Fisika Dasar 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kimia Dasar 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Fisika Dasar 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kimia Dasar 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Kimia Dasar 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Elektronika 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Elektronika 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Ulumul Hadist',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pemrograman 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Pemrograman 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Semester 3
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no3.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 3",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Matematika Teknik 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Matematika Diskrit',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Arsitektur Komputer',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pemrograman 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Pemrograman 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Rangkaian Elektrik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Rangkaian Elektrik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Ilmu Fiqih',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Ekonomi Teknik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Semester 4
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no4.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 4",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Ilmu Tauhid',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Matematika Teknik 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Teknik Digital',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Teknik Digital',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Jaringan Telekomunikasi',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Probabilitas dan Statistik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sinyal dan Sistem Linier',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Sinyal dan Sistem Linier',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('	Pengetahuan Lingkungan',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Semester 5
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no5.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 5",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Mikroprocessor',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Sistem Mikroprocessor',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Medan Elektromagnetik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Komunikasi',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Sistem Komunikasi',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kewirausahaan',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Jaringan Komputer',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Ilmu Akhlak',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Semester 6
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no6.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 6",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pengolahan Sinyal Digital',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text(
                                        'Prak Pengolahan Sinyal Digital',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Kendali',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Prak Sistem Kendali',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sejarah Peradaban Islam (SPI)',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Instrumentasi',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kerja Praktek',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Tenaga Listrik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pilihan 1',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Semester 7
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no7.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 7",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Metodologi Penelitian',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('PPKN',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pengolahan Citra Digital',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pilihan 2',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Multimedia',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pilihan 3',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Etika Profesi dan Rekayasa',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Semester 8
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/no8.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Semester 8",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Kuliah Kerja Mahasiswa (KKM)',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Komprehensif',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                           
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Tugas Akhir (TA)',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Ganjil
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/mekanika.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Mata Kuliah \nPilihan Ganjil",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text(
                                        'Antena dan Propagasi Gelombang',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Rekayasa Trafik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pengenalan Pola',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text(
                                        'Perancangan Sistem Tenaga Listrik',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Kecerdasan Buatan',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text(
                                        'Teori Informasi dan Pengkodean',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Jaringan Antrian',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Pemrograman Jaringan Lanjut',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Jaringan Multimedia',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    // Genap
                    SizedBox(height: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        margin: EdgeInsets.fromLTRB(7.5, 1, 7.5, 1),
                        padding: EdgeInsets.fromLTRB(
                            defaultMargin, 20, defaultMargin, 20),
                        child: Card(
                            color: Colors.white,
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "assets/mekanika.png",
                                    width: 85.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Mata Kuliah \nPilihan Genap",
                                      style: GoogleFonts.openSans().copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0)),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text(
                                        'Sistem Keamanan Informasi (SKI)',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text(
                                        'Software Defined Network (SDN)',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Mobile Programming',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Sistem Operasi',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Jaringan Pita Lebar',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.fiber_manual_record,
                                        color: Colors.black),
                                    title: Text('Komunikasi Nir Kabel',
                                        style: GoogleFonts.openSans().copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.0)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
               SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 36,
                    color: Colors.white,
                    onPressed: () {
                      context.bloc<PageBloc>().add(GoToMainPage());
                    }),
              ),
            )
            ])));
  }
}
