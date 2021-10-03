import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoPage extends StatefulWidget {
  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/2.jpg"),
              fit: BoxFit.cover,
            )),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, left:15),
                child: new Column(
                  children: <Widget>[
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 40.0),
                          Text(
                            'Himpunan',
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
                            'Mahasiswa',
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
                            'Teknik Elektro',
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
                          SizedBox(height: 140.0),
                          SizedBox(width: 315.0),
                        ]),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 70),
                        Text(
                          'UIN Bandung',
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
                      ],
                    )
                  ],
                ),
                // ),
                //  ),
              ),
            )));
  }
}
