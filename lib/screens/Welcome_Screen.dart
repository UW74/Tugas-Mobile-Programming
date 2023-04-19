import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key, required this.title}) : super(key: key);
  var title;
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PrimaryColor = const Color.fromARGB(255, 119, 87, 192);
  final TitleColor = const Color.fromARGB(255, 72, 72, 72);
  final SubtitleColor = const Color.fromARGB(255, 184, 184, 184);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo_ungu.png'),
                    SizedBox(
                      height: 25.18,
                    ),
                    Text(
                      'Universitas Pakuan',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: TitleColor,
                      ),
                    ),
                    Text(
                      'Unggul, Mandiri, & Berkarakter',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: SubtitleColor,
                      ),
                    ),
                    SizedBox(
                      height: 144.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF755799),
                        minimumSize: Size(240.0, 40.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                        textStyle: GoogleFonts.poppins(fontSize: 14.0),
                      ),
                    ),
                    SizedBox(
                      height: 17.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Register');
                      },
                      child: const Text('Register'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 255, 255),
                        onPrimary: const Color(0xff755799),
                        minimumSize: Size(240.0, 40.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                        textStyle: GoogleFonts.poppins(fontSize: 14.0),
                        side: BorderSide(color: PrimaryColor),
                      ),
                    )
                  ]),
            )));
  }
}
