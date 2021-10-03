part of 'pages.dart';

class PreferencePage extends StatefulWidget {
  final List<String> school = [
    "Semester 1",
    "Semester 3",
    "Semester 5",
    "Semester 7",
  ];

  final RegistrationData registrationData;

  PreferencePage(this.registrationData);

  @override
  _PreferencePageState createState() => _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  String selectedSchool = "Semester 5";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        widget.registrationData.password = "";

        context
            .bloc<PageBloc>()
            .add(GoToRegistrationPage(widget.registrationData));
        return;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: GestureDetector(
            onTap: () {
              widget.registrationData.password = "";

              context
                  .bloc<PageBloc>()
                  .add(GoToRegistrationPage(widget.registrationData));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 30),
          color: Color(0xFFe6f7ff),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 104,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: (widget
                                              .registrationData.profileImage ==
                                          null)
                                      ? AssetImage("assets/user_pic.png")
                                      : FileImage(
                                          widget.registrationData.profileImage),
                                  fit: BoxFit.cover)),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () async {
                              if (widget.registrationData.profileImage ==
                                  null) {
                                widget.registrationData.profileImage =
                                    await getImage();
                              } else {
                                widget.registrationData.profileImage = null;
                              }

                              setState(() {});
                            },
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage((widget.registrationData
                                                  .profileImage ==
                                              null)
                                          ? "assets/btn_add_photo.png"
                                          : "assets/btn_del_photo.png"))),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Semester Berapa Kamu?",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.indigo[900],
                          fontWeight: FontWeight.w700,
                          fontSize: 20)),
                  SizedBox(
                    height: 36,
                  ),
                  Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    children: generateSchoolWidgets(context),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 70,
                      width: 70,
                      child: FloatingActionButton(
                          child: Icon(Icons.arrow_forward, size: 40),
                          backgroundColor: Colors.indigo[900],
                          elevation: 0,
                          onPressed: () {
                            if (selectedSchool.length == 0) {
                              Flushbar(
                                duration: Duration(milliseconds: 1500),
                                flushbarPosition: FlushbarPosition.TOP,
                                backgroundColor: Color(0xFFFF5C83),
                                message:
                                    "Pilih salah satu diantara opsi dibawah",
                              )..show(context);
                            } else {
                              widget.registrationData.selectedSchool =
                                  selectedSchool;

                              context.bloc<PageBloc>().add(
                                  GoToAccountConfirmationPage(
                                      widget.registrationData));
//                            }
                            }
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> generateSchoolWidgets(BuildContext context) {
    double width =
        (MediaQuery.of(context).size.width - 2 * defaultMargin - 24) / 2;

    return widget.school
        .map((e) => SelectableBox(
              e,
              width: width,
              isSelected: selectedSchool == e,
              onTap: () {
                setState(() {
                  selectedSchool = e;
                });
              },
            ))
        .toList();
  }
}
