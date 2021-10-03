part of 'pages.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  List<Widget> widgets = List.generate(
      5,
      (index) => Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: Icon(
              MdiIcons.star,
              color: Colors.yellow,
              size: 28,
            ),
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
          body: Stack(children: [
            SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Center(
                      child: Image.asset(
                        'assets/images/dev.png',
                        height: 140,
                        width: 150,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Our Developer",
                        style: GoogleFonts.poppins().copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 7),
                    Center(
                      child: Text(
                        "if you are interested in collaborating with us, \nplease contact us via email or instagram",
                        style: GoogleFonts.poppins().copyWith(
                          color: Color(0xff999999),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 164,
                              width: 320,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Color(0xff41C4FC),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff999999),
                                    spreadRadius: 4,
                                    blurRadius: 16,
                                    offset: Offset(
                                        0, 8), // changes position of shadow
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 12, left: 5),
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
                                                  'assets/images/our_dev.jpeg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Muhammad Alvito Aditya',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Full Stack Mobile Developer',
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  SizedBox(width: 7),
                                                  Container(
                                                    height: 18,
                                                    width: 2,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                  ),
                                                  SizedBox(width: 7),
                                                  Container(
                                                    height: 18,
                                                    width: 2,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                  ),
                                                ]),
                                            SizedBox(height: 5),
                                            Text(
                                              'Electrical Engineering Student',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: widgets,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Email   :  muhammadalvitoaditya@gmail.com',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'IG          :  alvitoadty',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
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
                                  ])
                                  .createShader(Rect.fromLTRB(0, 0, 77.5, 80));
                            },
                            blendMode: BlendMode.dstIn,
                            child: SizedBox(
                              height: 160,
                              width: 320,
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
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
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
                                    ])
                                    .createShader(Rect.fromLTRB(0, 0, 96, 45));
                              },
                              blendMode: BlendMode.dstIn,
                              child: SizedBox(
                                height: 160,
                                width: 320,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                    ),
                                    child:
                                        Image.asset("assets/reflection1.png")),
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
                                    ])
                                    .createShader(Rect.fromLTRB(0, 0, 53, 25));
                              },
                              blendMode: BlendMode.dstIn,
                              child: SizedBox(
                                height: 160,
                                width: 320,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                    ),
                                    child:
                                        Image.asset("assets/reflection1.png")),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              height: 164,
                              width: 320,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                color: Color(0xff41C4FC),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff999999),
                                    spreadRadius: 4,
                                    blurRadius: 16,
                                    offset: Offset(
                                        0, 8), // changes position of shadow
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 12, left: 5),
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
                                                  'assets/images/profjur.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Research Team',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'Electrical Engineering Student',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: widgets,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Email   :  profjur.himanitro123@gmail.com',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'IG          :  himanitro.uinbdg',
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 11,
                                      ),
                                    ),
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
                                  ])
                                  .createShader(Rect.fromLTRB(0, 0, 77.5, 80));
                            },
                            blendMode: BlendMode.dstIn,
                            child: SizedBox(
                              height: 160,
                              width: 320,
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
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
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
                                    ])
                                    .createShader(Rect.fromLTRB(0, 0, 96, 45));
                              },
                              blendMode: BlendMode.dstIn,
                              child: SizedBox(
                                height: 160,
                                width: 320,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                    ),
                                    child:
                                        Image.asset("assets/reflection1.png")),
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
                                    ])
                                    .createShader(Rect.fromLTRB(0, 0, 53, 25));
                              },
                              blendMode: BlendMode.dstIn,
                              child: SizedBox(
                                height: 160,
                                width: 320,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                    ),
                                    child:
                                        Image.asset("assets/reflection1.png")),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 14),
                child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 36,
                    color: Colors.black,
                    onPressed: () {
                      context.bloc<PageBloc>().add(GoToMainPage());
                    }),
              ),
            )
          ]),
        ));
  }
}
