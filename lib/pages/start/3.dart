import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreePage extends StatefulWidget {
  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/3.jpg"),
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
                            'Aplikasi Dengan',
                            style: GoogleFonts.poppins(
                                fontSize: 35,
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
                            'Berbagai Fitur dan',
                            style: GoogleFonts.poppins(
                              fontSize: 35,
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
                            'Layanan yang',
                            style: GoogleFonts.poppins(
                              fontSize: 35,
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
                            'Memudahkan',
                            style: GoogleFonts.poppins(
                              fontSize: 35,
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
                              fontSize: 35,
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
