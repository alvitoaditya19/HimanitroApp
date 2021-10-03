part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => this.context.bloc<PageBloc>().add(GoToLanding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF152C5B),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50.0),
                Text(
                  'PRESENTED BY',
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Colors.black,
                        offset: Offset(3.0, 4.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100.0),
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: new Image.asset(
                      'assets/13.png',
                      width: 220,
                    )),
                SizedBox(height: 190.0),
                Text(
                  'HIMANITRO',
                  style: GoogleFonts.poppins(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Colors.black,
                        offset: Offset(3.0, 4.0),
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
