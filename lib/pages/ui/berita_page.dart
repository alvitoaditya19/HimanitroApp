part of 'pages.dart';

class MotivasiPage extends StatefulWidget {
  @override
  _MotivasiPageState createState() => _MotivasiPageState();
}

class _MotivasiPageState extends State<MotivasiPage> {
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
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(50),
                      ),
                      color: Colors.white),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 6),
                        Image.asset(
                          "assets/images/kom.png",
                          height: 80,
                          width: 80,
                        ),
                        Text("Berita Himanitro",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        Text(
                          "Portal informasi dan \nberita seputar Teknik Elektro",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Color(0xff999999),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                ),
                
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    removeBottom: true,
                    child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection("info")
                            .snapshots(),
                        builder: (_, snapshot) {
                          if (!snapshot.hasData)
                            return SpinKitCircle(color: Colors.blue, size: 100);
                          return DaftarList(daftarInfo: snapshot.data.docs);
                        }),
                  ),
                ),
               
              ]),
        ));
  }
}

class DaftarList extends StatelessWidget {
  final List<DocumentSnapshot> daftarInfo;

  DaftarList({
    Key key,
    this.daftarInfo,
  }) : super(key: key);

  void customLaunch(command) async {
    await launch(command);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ListView.builder(
      padding: EdgeInsets.only(bottom: 90, top: 15),
        shrinkWrap: true,
        itemCount: daftarInfo.length,
        itemBuilder: (_, index) {
          Map data = daftarInfo[index].data();
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(
                    data,
                    daftarInfo[index].reference,
                  ),
                ),
              );
            },
            child: Container(
                height: 190,
                padding: EdgeInsets.only(
                    top: 7.0, left: 20.0, right: 20.0, bottom: 12),
                child: InkWell(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.white),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(width: 10),
                                  Container(
                                      width: 100,
                                      height: 140,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                daftarInfo[index]
                                                        .data()["gambar"]
                                                        .toString() ??
                                                    '',
                                              ),
                                              fit: BoxFit.fill))),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          daftarInfo[index]
                                                  .data()["judul"]
                                                  .toString() ??
                                              '',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                            fontSize: 23,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          daftarInfo[index]
                                                  .data()["subjudul"]
                                                  .toString() ??
                                              '',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                          style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: Color(0xff999999),
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              daftarInfo[index]
                                                      .data()["tanggal"]
                                                      .toString() ??
                                                  '',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                              style: GoogleFonts.poppins(
                                                fontSize: 11,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            Container(
                                                height: 20,
                                                width: 20,
                                                child: VerticalDivider(
                                                    thickness: 4,
                                                    color: Colors.black)),
                                            Text(
                                              daftarInfo[index]
                                                      .data()["jenis"]
                                                      .toString() ??
                                                  '',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                              style: GoogleFonts.poppins(
                                                fontSize: 11,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ])))),
          );
        });
  }
}
