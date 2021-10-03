part of 'pages.dart';

class SaintekPage extends StatefulWidget {
  @override
  _SaintekPageState createState() => _SaintekPageState();
}

class _SaintekPageState extends State<SaintekPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [];

  TextEditingController _textFieldController = TextEditingController();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  YoutubePlayerController _controller;
  final fb = FirebaseDatabase.instance;
  bool select = false;
  bool select1 = false;
  bool select2 = false;
  String name = "1";
  String name1 = "0";

  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(
            'https://www.youtube.com/watch?v=67JS_J1fGJk'),
        flags: YoutubePlayerFlags(
            enableCaption: false, isLive: false, autoPlay: false));
  }

  @override
  void initState() {
    runYoutubePlayer();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  _launchURL() async {
    const url = 'https://basoelektro.blogspot.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget button(int index, String title, var halaman, String gambar) {
      return GestureDetector(
        onTap: () {
          context.bloc<PageBloc>().add(halaman);
        },
        child: Container(
          width: 160.0,
          height: 160.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 4,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(27),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 3,
                color: const Color(0xff000000).withOpacity(0.90),
              )
            ],
          ),
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        gambar,
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        title,
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ))),
        ),
      );
    }

    final ref = fb.reference().child("Node1");
    context
        .bloc<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor1)));

    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToStartMenu());

          return;
        },
        child: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
              width: 340,
            ),
            builder: (context, player) {
              return Scaffold(
                key: scaffoldKey,
                backgroundColor: Color(0xFFe6f7ff),
                appBar: new AppBar(
                  backgroundColor: Color(0xFFe6f7ff),
                  centerTitle: true,
                  leading: new IconButton(
                    icon: new Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.black,
                    ),
                    onPressed: () => scaffoldKey.currentState.openDrawer(),
                  ),
                  actions: <Widget>[
                    SizedBox(width: 20),
                    FlatButton(
                      onPressed: () {
                        context.bloc<PageBloc>().add(GoToTEPage());
                      },
                      child: Text("Teknik Elektro",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 21.5)),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.transparent,
                              width: 10,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(width: 5),
                    FlatButton(
                      onPressed: () {
                        context.bloc<PageBloc>().add(GoToHimanitroPage());
                      },
                      child: Text("Himanitro",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 21.5)),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.transparent,
                              width: 10,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                body: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 12.5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.fromLTRB(20, 12, 20, 12),
                        padding: EdgeInsets.fromLTRB(25, 20, 25, 20),
                        child: BlocBuilder<UserBloc, UserState>(
                            builder: (_, userState) {
                          if (userState is UserLoaded) {
                            if (imageFileToUpload != null) {
                              uploadImage(imageFileToUpload)
                                  .then((downloadURL) {
                                imageFileToUpload = null;
                                context
                                    .bloc<UserBloc>()
                                    .add(UpdateData(profileImage: downloadURL));
                              });
                            }

                            return Row(
                              children: <Widget>[
                                Container(
                                  child: Stack(
                                    children: <Widget>[
                                      SpinKitFadingCircle(
                                        color: Colors.blue,
                                        size: 50,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.bloc<PageBloc>().add(
                                              GoToEditProfilePage(
                                                  (userState as UserLoaded)
                                                      .user));
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: (userState.user
                                                              .profilePicture ==
                                                          ""
                                                      ? AssetImage(
                                                          "assets/user_pic.png")
                                                      : NetworkImage(userState
                                                          .user
                                                          .profilePicture)),
                                                  fit: BoxFit.cover)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          2 * defaultMargin -
                                          140,
                                      child: Text(
                                        "Halo, " + userState.user.name,
                                        style: GoogleFonts.poppins(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                      ),
                                    ),
                                    Text(
                                      userState.user.selectedSchool,
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                    )
                                  ],
                                ),
                              ],
                            );
                          } else {
                            return SpinKitFadingCircle(
                              color: Colors.blue,
                              size: 50,
                            );
                          }
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text("Video Profile",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                            ),
                            textAlign: TextAlign.start),
                      ),
                      SizedBox(height: 12),
                      Center(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: player,
                      )),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text("Menu",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                            ),
                            textAlign: TextAlign.start),
                      ),
                      SizedBox(height: 10),
                      StreamBuilder(
                        builder: (context, snapshot) {
                          if (snapshot.hasData &&
                              !snapshot.hasError &&
                              snapshot.data.snapshot.value != null) {
                            return Center(
                                child: Wrap(
                              spacing: 15,
                              runSpacing: 15.0,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    context.bloc<PageBloc>().add(GoToKabinet());
                                  },
                                  child: Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(27),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 3),
                                          blurRadius: 3,
                                          color: const Color(0xff000000)
                                              .withOpacity(0.90),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: <Widget>[
                                                SizedBox(height: 8),
                                                Image.asset(
                                                  'assets/images/reactor.png',
                                                  height: 82,
                                                  width: 82,
                                                ),
                                                SizedBox(height: 12),
                                                Text(
                                                  "Kabinet Reactor",
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 17.0),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                              ],
                                            ))),
                                  ),
                                ),
                                button(0, "Mata Kuliah", GoToMatkulPage(),
                                    'assets/images/matkul.png'),
                                button(1, "Dosen", GoToDosenPage(),
                                    'assets/images/dosen.png'),
                                button(2, "Note", GoToNotePage(),
                                    'assets/images/note.png'),
                                GestureDetector(
                                  onTap: () => _launchURL(),
                                  child: Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(27),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 3),
                                          blurRadius: 3,
                                          color: const Color(0xff000000)
                                              .withOpacity(0.90),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/images/banksoal.png',
                                                  height: 100,
                                                  width: 100,
                                                ),
                                                Text(
                                                  "Bank Soal",
                                                  style: GoogleFonts.openSans()
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 20.0),
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                              ],
                                            ))),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('Enter Password',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            content: TextFormField(
                                              controller: _textFieldController,
                                              decoration: InputDecoration(
                                                  hintText: 'Enter Password'),
                                              maxLength: 15,
                                              obscureText: true,
                                            ),
                                            actions: [
                                              FlatButton(
                                                child: Text('Cancel',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                              //this needs to validate if the typed value was the same as the
                                              //hardcoded password, it would run the _getImage() function
                                              //the same as the validator in the TextFormField
                                              FlatButton(
                                                child: Text('OK',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                                onPressed: () {
                                                  String data =
                                                      _textFieldController
                                                          .value.text;

                                                  if (data == '314784') {
                                                    launch(snapshot.data
                                                        .snapshot.value["arsip"]
                                                        .toString());
                                                  } else {
                                                    //Show Toast

                                                    //Close the Dialog
                                                    Flushbar(
                                                      duration: Duration(
                                                          milliseconds: 1500),
                                                      flushbarPosition:
                                                          FlushbarPosition.TOP,
                                                      backgroundColor:
                                                          Color(0xFFFF5C83),
                                                      message:
                                                          "Password Yang Anda Masukkan Salah",
                                                    )..show(context);
                                                  }
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(27),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 3),
                                          blurRadius: 3,
                                          color: const Color(0xff000000)
                                              .withOpacity(0.90),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/images/arsip.png',
                                                  height: 82,
                                                  width: 82,
                                                ),
                                                Text(
                                                  "Pengumpulan \nArsip",
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                              ],
                                            ))),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    if (await canLaunch(snapshot
                                        .data.snapshot.value["aspirasi"]
                                        .toString())) {
                                      await launch(snapshot
                                          .data.snapshot.value["aspirasi"]
                                          .toString());
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(27),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 3),
                                          blurRadius: 3,
                                          color: const Color(0xff000000)
                                              .withOpacity(0.90),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/images/aspirasi.png',
                                                  height: 82,
                                                  width: 82,
                                                ),
                                                Text(
                                                  "Pojok \nAspirasi",
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                              ],
                                            ))),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('Enter Password',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            content: TextFormField(
                                              controller: _textFieldController,
                                              decoration: InputDecoration(
                                                  hintText: 'Enter Password'),
                                              maxLength: 15,
                                              obscureText: true,
                                            ),
                                            actions: [
                                              FlatButton(
                                                child: Text('Cancel',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                              //this needs to validate if the typed value was the same as the
                                              //hardcoded password, it would run the _getImage() function
                                              //the same as the validator in the TextFormField
                                              FlatButton(
                                                child: Text('OK',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                                onPressed: () {
                                                  String data =
                                                      _textFieldController
                                                          .value.text;

                                                  if (data == '314784') {
                                                    launch(snapshot
                                                        .data
                                                        .snapshot
                                                        .value["absenRapat"]
                                                        .toString());
                                                  } else {
                                                    //Show Toast

                                                    //Close the Dialog
                                                    Flushbar(
                                                      duration: Duration(
                                                          milliseconds: 1500),
                                                      flushbarPosition:
                                                          FlushbarPosition.TOP,
                                                      backgroundColor:
                                                          Color(0xFFFF5C83),
                                                      message:
                                                          "Password Yang Anda Masukkan Salah",
                                                    )..show(context);
                                                  }
                                                },
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(27),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: const Offset(0, 3),
                                          blurRadius: 3,
                                          color: const Color(0xff000000)
                                              .withOpacity(0.90),
                                        )
                                      ],
                                    ),
                                    child: Center(
                                        child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/images/absen.png',
                                                  height: 82,
                                                  width: 82,
                                                ),
                                                Text(
                                                  "Absen \nRapat",
                                                  style: GoogleFonts.poppins()
                                                      .copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                              ],
                                            ))),
                                  ),
                                ),
                              ],
                            ));
                          } else {
                            return SpinKitFadingCircle(
                              color: Colors.blue,
                              size: 100,
                            );
                          }
                        },
                        stream: ref.onValue,
                      ),
                      SizedBox(height: 95),
                    ],
                  ),
                ),
                drawer: Drawer(
                  child:
                      BlocBuilder<UserBloc, UserState>(builder: (_, userState) {
                    if (userState is UserLoaded) {
                      if (imageFileToUpload != null) {
                        uploadImage(imageFileToUpload).then((downloadURL) {
                          imageFileToUpload = null;
                          context
                              .bloc<UserBloc>()
                              .add(UpdateData(profileImage: downloadURL));
                        });
                      }

                      return ListView(padding: EdgeInsets.all(0.0), children: <
                          Widget>[
                        UserAccountsDrawerHeader(
                          accountName: Text(
                            userState.user.name,
                            style: GoogleFonts.poppins().copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                          accountEmail: Text(
                            userState.user.email,
                            style: GoogleFonts.poppins().copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                          currentAccountPicture: GestureDetector(
                            onTap: () {
                              context.bloc<PageBloc>().add(GoToEditProfilePage(
                                  (userState as UserLoaded).user));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: (userState.user.profilePicture ==
                                              ""
                                          ? AssetImage("assets/user_pic.png")
                                          : NetworkImage(
                                              userState.user.profilePicture)),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/drawer.png"),
                                  fit: BoxFit.cover)),
                        ),
                        ListTile(
                          title: Text(
                            'Website Himanitro',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                          leading: Icon(
                            Icons.account_balance_sharp,
                            color: Colors.black,
                          ),
                          onTap: () {
                            customLaunch('https://www.himanitrouinsgd.or.id/');
                          },
                        ),
                        ListTile(
                          title: Text(
                            'Website Teknik Elektro \nUIN Bandung',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                          leading: Icon(
                            Icons.desktop_mac_rounded,
                            color: Colors.black,
                          ),
                          onTap: () {
                            customLaunch('https://ee.uinsgd.ac.id/');
                          },
                        ),
                        ListTile(
                          title: Text(
                            'Website Salam \nUIN Bandung',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                          leading: Icon(
                            Icons.analytics,
                            color: Colors.black,
                          ),
                          onTap: () {
                            customLaunch(
                                'https://salam.uinsgd.ac.id/portal/salam/');
                          },
                        ),
                        ListTile(
                          title: Text(
                            'Website E-Knows \nUIN Bandung',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                          leading: Icon(
                            Icons.bookmarks_sharp,
                            color: Colors.black,
                          ),
                          onTap: () {
                            customLaunch('https://eknows.uinsgd.ac.id/');
                          },
                        ),
                        ListTile(
                          title: Text(
                            'Our Developer',
                            style: GoogleFonts.poppins().copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0),
                          ),
                          leading: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          onTap: () {
                            context.bloc<PageBloc>().add(GoToDeveloper());
                          },
                        ),
                      ]);
                    } else {
                      return SpinKitFadingCircle(
                        color: Colors.blue,
                        size: 50,
                      );
                    }
                  }),
                ),
              );
            }));
  }

  Future<void> readData() async {
    fb.reference().child("Node1").once().then((DataSnapshot snapshot) {
      print(snapshot.value);
    });
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('TextField in Dialog'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Text Field in Dialog"),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                print(_textFieldController.text);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
