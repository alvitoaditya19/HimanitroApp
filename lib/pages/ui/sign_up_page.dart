part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  final RegistrationData registrationData;

  SignUpPage(this.registrationData);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();

    nameController.text = widget.registrationData.name;
    emailController.text = widget.registrationData.email;
  }

  @override
  Widget build(BuildContext context) {
    context
        .bloc<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: accentColor1)));

    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToSignInPage());

          return;
        },
        child: Scaffold(
          backgroundColor: Color(0xFF152C5B),
          body: SingleChildScrollView(
            child: Center(
                child: Stack(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/3.jpg"),
                  fit: BoxFit.none,
                )),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Transform.rotate(
                      angle: math.pi,
                      child: IconButton(
                        padding: const EdgeInsets.only(left: 320),
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.white,
                        iconSize: 40,
                        onPressed: () {
                          context.bloc<PageBloc>().add(GoToSignInPage());
                        },
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'HIMANITRO APP',
                      style: GoogleFonts.poppins(
                        fontSize: 37,
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
                ),
              ),
              Positioned(
                  //JARAK DARI ATAS KITA AMBIL DARI HEIGHT DIBAGI 3.6
                  top: MediaQuery.of(context).size.height / 4.4,
                  //ISINYA ADALAH CONTAINER YANG WIDTHNYA SELEBAR MUNGKIN
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Card(

                          //LALU CARD KITA SET MARGINNYA 20 DARI CONTAINER
                          margin: const EdgeInsets.all(20.0),
                          elevation: 8, //KETEBALANNYA
                          color: Colors.grey[300],
                          child: Padding(
                              //KEMUDIAN COLUMN KITA SET LAGI PADDINGNYA DARI CARD
                              padding: const EdgeInsets.all(15.0),
                              child: Center(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                    SizedBox(height: 10),
                                    Center(
                                      
                                      child: Text(
                                        "Register Account",
                                        style: GoogleFonts.poppins().copyWith(
                                          color: Color(0xFF152C5B),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Email",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF152C5B),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 49,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue,
                                              blurRadius: 3.0,
                                              offset: Offset(0, 0),
                                            ),
                                          ]),
                                      child: TextField(
                                          controller: emailController,
                                          style: GoogleFonts.poppins(
                                            height: 1.5,
                                            color: Colors.blue,
                                          ),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.blue,
                                            ),
                                            labelText: "Enter your Email",
                                            hintText: 'Enter your Email',
                                          )),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                        "Name",
                                        style: GoogleFonts.poppins(
                                        color: Color(0xFF152C5B),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        ),
                                      ),
                                    
                                    SizedBox(height: 10),
                                    Container(
                                      height: 47,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue,
                                              blurRadius: 3.0,
                                              offset: Offset(0, 0),
                                            ),
                                          ]),
                                      child: TextField(
                                          controller: nameController,
                                          style: GoogleFonts.poppins(
                                            height: 1.5,
                                            color: Colors.blue,
                                          ),
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.blue,
                                            ),
                                            labelText: "Enter your Name",
                                            hintText: 'Enter your Name',
                                          )),
                                    ),
                                    SizedBox(height: 10),
                                   Text(
                                        "Password",
                                        style: GoogleFonts.poppins(
                                           color: Color(0xFF152C5B),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        ),
                                      ),
                                    
                                    SizedBox(height: 10),
                                    Container(
                                      height: 47,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue,
                                              blurRadius: 3.0,
                                              offset: Offset(0, 0),
                                            ),
                                          ]),
                                      child: TextField(
                                          controller: passwordController,
                                          obscureText: true,
                                          style: TextStyle(
                                            height: 1.5,
                                            color: Colors.blue,
                                            fontFamily: 'OpenSans',
                                          ),
                       decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.blue,
                                            ),
                                            labelText: "Enter your Password",
                                            hintText: 'Enter your Password',
                                          )),
                                    ),
                                    SizedBox(height: 10),
                     Text(
                                        "Re-Password",
                                        style: GoogleFonts.poppins(
                                          color: Color(0xFF152C5B),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        ),
                                      ),
                                    
                                    SizedBox(height: 10),
                                    Container(
                                      height: 47,
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.blue,
                                              blurRadius: 3.0,
                                              offset: Offset(0, 0),
                                            ),
                                          ]),
                                      child: TextField(
                                          controller: retypePasswordController,
                                          obscureText: true,
                                          style: TextStyle(
                                            height: 1.5,
                                            color: Colors.blue,
                                            fontFamily: 'OpenSans',
                                          ),
                     decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.blue,
                                            ),
                                            labelText: "Enter your Re-Password",
                                            hintText: 'Enter your Re-Password',
                                          )),
                                    ),
                                    SizedBox(height: 20),
                                    Center(
                                      child: RaisedButton(
                                        onPressed: () {
                                          if (!(nameController.text.trim() !=
                                                  "" &&
                                              emailController.text.trim() != "" &&
                                              passwordController.text.trim() !=
                                                  "" &&
                                              retypePasswordController.text
                                                      .trim() !=
                                                  "")) {
                                            Flushbar(
                                              duration:
                                                  Duration(milliseconds: 1500),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor: Color(0xFFFF5C83),
                                              message:
                                                  "Please fill all the fields",
                                            )..show(context);
                                          } else if (passwordController.text !=
                                              retypePasswordController.text) {
                                            Flushbar(
                                              duration:
                                                  Duration(milliseconds: 1500),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor: Color(0xFFFF5C83),
                                              message:
                                                  "Mismatch password and confirmed password",
                                            )..show(context);
                                          } else if (passwordController
                                                  .text.length <
                                              6) {
                                            Flushbar(
                                              duration:
                                                  Duration(milliseconds: 1500),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor: Color(0xFFFF5C83),
                                              message:
                                                  "Password's length min 6 characters",
                                            )..show(context);
                                          } else if (!EmailValidator.validate(
                                              emailController.text)) {
                                            Flushbar(
                                              duration:
                                                  Duration(milliseconds: 1500),
                                              flushbarPosition:
                                                  FlushbarPosition.TOP,
                                              backgroundColor: Color(0xFFFF5C83),
                                              message:
                                                  "Wrong formatted email address",
                                            )..show(context);
                                          } else {
                                            widget.registrationData.name =
                                                nameController.text;
                                            widget.registrationData.email =
                                                emailController.text;
                                            widget.registrationData.password =
                                                passwordController.text;

                                            context.bloc<PageBloc>().add(
                                                GoToPreferencePage(
                                                    widget.registrationData));
                                          }
                                        },
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 90),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        color: Colors.blue.withOpacity(0.7),
                                        child: Text(
                                          'Register',
                                          style: GoogleFonts.poppins().copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    SizedBox(height: 5),
                                  ])))))),
            ])),
          ),
        ));
  }
}
