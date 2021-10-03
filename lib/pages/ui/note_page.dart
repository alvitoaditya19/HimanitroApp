part of 'pages.dart';

class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
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
      child: MaterialApp(
        title: 'NoteKeeper',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
            headline5: GoogleFonts.poppins(
               
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 24),
            bodyText2: GoogleFonts.poppins(
                
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20),
            bodyText1: GoogleFonts.poppins(
                
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 18),
            subtitle2: GoogleFonts.poppins(
               
                fontWeight: FontWeight.normal,
                color: Colors.black,
                fontSize: 14),
          ),
        ),
        home: NoteList(),
      ),
    );
  }
}
