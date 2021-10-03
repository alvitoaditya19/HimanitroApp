part of 'pages.dart';

class DosenPage extends StatefulWidget {
  @override
  _DosenPageState createState() => _DosenPageState();
}

class _DosenPageState extends State<DosenPage> {
  List<Widget> widgets = List.generate(
      5,
      (index) => Icon(
            MdiIcons.star,
            color: Colors.yellow,
            size: 34,
          ));

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
                  iconSize: 36,
                  color: Colors.black,
                  onPressed: () {
                    context.bloc<PageBloc>().add(GoToMainPage());
                  }),
            ),
            body: Stack(children: <Widget>[
              Column(children: <Widget>[
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 15, bottom: 7),
                    child: Text(
                      "Struktur Organisasi \nTeknik Elektro",
                      style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 5),
                          width: MediaQuery.of(context).size.width - 100.0,
                          height: MediaQuery.of(context).size.height - 230,
                          child: GridView.builder(
                              itemCount: kontenDosen.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                crossAxisSpacing: 2.5,
                                childAspectRatio: 2.5,
                                mainAxisSpacing: 2.5,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20, right: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            SizedBox(height: 9),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 20),
                                              child: Container(
                                                width: 80,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    width: 4.5,
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        kontenDosen[index]
                                                            .gambar),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 15),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                        kontenDosen[index].nama,
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          color:
                                                              Colors.black,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 16,
                                                        ),
                                                        maxLines: 2,
                                                        textAlign:
                                                            TextAlign.center),
                                                    SizedBox(height: 5),
                                                    Text(
                                                        kontenDosen[index]
                                                            .jabatan,
                                                        style: GoogleFonts
                                                                .poppins()
                                                            .copyWith(
                                                          color:
                                                              Color(0xff999999),
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontSize: 16,
                                                        ),
                                                        maxLines: 2,
                                                        textAlign:
                                                            TextAlign.center),
                                                            SizedBox(height: 10),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: widgets,
                                                    ),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ));
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ])
            ])));
  }
}
