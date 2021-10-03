part of 'pages.dart';

class MovieDetailScreen extends StatefulWidget {
  final Map data;
  final DocumentReference ref;

  MovieDetailScreen(this.data, this.ref);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  String title;
  String des;

  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    title = widget.data['judul'];

    des = widget.data['subjudul'].replaceAll("\\n", "\n");
    return Scaffold(
      backgroundColor: Color(0xFFe6f7ff),
      appBar: new AppBar(
        backgroundColor: Color(0xFFe6f7ff),
        centerTitle: true,
        leading: new IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 32,
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        title: Text(
          "Himanitro News",
          style: GoogleFonts.poppins().copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: <Widget>[
              Container(
                height: 270,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          widget.data['gambar'],
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                height: 271,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 1),
                        end: Alignment(0, 0.06),
                        colors: [
                      Color(0xFFe6f7ff),
                      Color(0xFFe6f7ff).withOpacity(0)
                    ])),
              )
            ],
          ),

          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                  child: Text(
                    widget.data['judul'],
                    style: GoogleFonts.poppins().copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.data['tanggal'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                          height: 20,
                          width: 20,
                          child: VerticalDivider(
                              thickness: 4, color: Colors.black)),
                      Text(
                        widget.data['jenis'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  child: Text(
                    widget.data['subjudul'].replaceAll("\\n", "\n"),
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  child: Text(
                   widget.data['subjudul1'].replaceAll("\\n", "\n") ,
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  child: Text(
                   widget.data['subjudul2'].replaceAll("\\n", "\n") ,
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  child: Text(
                   widget.data['subjudul3'].replaceAll("\\n", "\n") ,
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                  child: Text(
                   widget.data['subjudul4'].replaceAll("\\n", "\n") ,
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ),
           
              ]),
        ]),
      ),
    );
  }
}


