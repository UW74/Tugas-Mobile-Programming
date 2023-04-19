import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePictwithDesc extends StatelessWidget {
  const ProfilePictwithDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var styling_profile = GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0x908B8B8B)
            );
    var styleisi = GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    );
    var styleawalan = GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    );
    var styleawalandetil = GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xff484848)
              );
    var styleisidetil = GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: const Color(0x90484848)
              );
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [

          //Profile Picture
          Container(
            padding: EdgeInsets.all(1.0),
            decoration: BoxDecoration(boxShadow : [ 
              BoxShadow(
                color: Colors.black26,
                blurRadius: 15.0,
                offset: Offset(0, 4)
              )
            ], 
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Color(0xff755799)
          ),

            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_pict.jpg'),
              radius: 50, 
            ),
          ),
          SizedBox(height: 10,),
          //Description
          Text('Bayu Ilham', style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: const Color(0xff484848)
          ),),
          Text('bayu.065120067@unpak.ac.id', style: styling_profile),
          Text('082125666716', style: styling_profile),
          SizedBox(height: 37,),
          //Card Description
          Container(
            decoration: BoxDecoration(
              color: Color(0xff755799),
              borderRadius: BorderRadius.circular(12)
            ),
            padding: const EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NPM', style: styleawalan,),
                    Spacer(),
                    Text('065120067', style: styleisi,),
                    SizedBox(width: 9),
                    Icon(Icons.copy, color: Colors.white, size: 15,)
                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Status Keaktifan', style: styleawalan,),
                    Spacer(),
                    Text('Aktif', style: styleisi,),
                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Program Studi', style: styleawalan,),
                    Spacer(),
                    Text('Ilmu Komputer', style: styleisi,),
                  ],
                ),
                const Divider(color: Colors.white,),
                Row(
                  children: [
                    Text('Jenjang Pendidikan', style: styleawalan,),
                    Spacer(),
                    Text('S1', style: styleisi,),
                  ],
                )
              ],
            ),
           ),
          SizedBox(height: 50,),
          //Detail Description
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text('Nama Lengkap', style: styleawalandetil ,),
                const Spacer(),
                Text('Bayu Ilham', style: styleisidetil,)
              ],
            ),
          ),
          const Divider(color: Color(0xff755799),),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text('Panggilan', style: styleawalandetil,),
                const Spacer(),
                Text('Bayu', style: styleisidetil,)
              ],
            ),
          ), 
          const Divider(color: Color(0xff755799),),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment : CrossAxisAlignment.start,
              children: [
                Text('Alamat Rumah', style: styleawalandetil,),
                const SizedBox(height: 6,),
                Text('Jl.Pisang No.19, Kecamatan Tamansari, Kelurahan Tamansari, Kabupaten Bogor, Jawa Barat, Indonesia, 16610', style: styleisidetil,)
              ],
            ),
          ),
          const Divider(color: Color(0xff755799),),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              children: [
                Text('Kartu Mahasiswa', style: styleawalandetil,),
                const Spacer(),
                const Icon(Icons.badge, color: Color(0xff755799),)
              ],
            ),
          )
        ],
      ),
    );
  }
}