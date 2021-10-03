import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnePage extends StatefulWidget {
  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"),
              fit: BoxFit.cover,
            )),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 40.0),
                          Text(
                            'Selamat Datang',
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
                          SizedBox(height: 7.0),
                          Text(
                            'di Aplikasi',
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
                          SizedBox(height: 7.0),
                          Text(
                            'Himanitro APP',
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
                        ])
                    // ),
                    //  ),
                    ))));
  }
}
