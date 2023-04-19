import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_app/screens/Welcome_Screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen ({
    Key? key,
  }) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatewelcome();
  }

  _navigatewelcome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context)=> WelcomeScreen(
          title: 'welcome',
        ) 
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff755799),
        child: Center(
          child: Column(
            mainAxisAlignment :MainAxisAlignment.center,
            children:[
              Image.asset('assets/logo_putih.png'),

              SizedBox(
                height: 29.92,
              ),
              
              Text(
                'Universitas Pakuan',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              
              Text(
                'Unggul, Mandiri, & Berkarakter',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ]
          ),
        )
      )
    );
  }
}
