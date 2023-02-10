import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:task1/Donation/pages/donationhome.dart';
import 'package:task1/biography/biographylist.dart';
import 'package:task1/contact.dart';
import 'package:task1/hymn/hymnlist.dart';
import 'package:task1/introduction/introduction.dart';
import 'package:task1/media/medialist.dart';
import 'package:task1/palanquinway/palanquinway.dart';
import 'aarti/aartilist.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
           Container(
            
              
       width: 50,
      height: 170,
      color: Colors.yellow,
          child: const DrawerHeader(
             child: Text(""),
             
              decoration: BoxDecoration(
                 color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage("assets/im1.png"),
                     fit: BoxFit.scaleDown)
              ),
              margin: EdgeInsets.all(30),
            ),
          ),

          ListTile(
            title: Text('Introduction'.tr,style: TextStyle(color: Colors.red,),),
             leading: ImageIcon(
     AssetImage("assets/tarrow.png",),
    //  color: Colors.black,
      size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => introduction()));
            }
          ),
          ListTile(
            title: Text('Aarti'.tr,style: TextStyle(color: Colors.red,),),
             leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
    //  color: Colors.black,
     size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => aartilist()));
            },
          ),
    //           const ExpansionTile(
    //          title: Text(
    //             "Aarti",style: TextStyle(color: Colors.red),),
    //          leading:const ImageIcon(
    //  AssetImage("assets/tarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
             
    //          children: [
              
              
    //                 ListTile(
    //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    //                   title: Text('data'),
    //                     leading:const ImageIcon(
    //  AssetImage("assets/rightarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
                   
    //                 ),
    // //                 ListTile(
    // //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    // //                   title: Text('data'),
    // //                     leading:const ImageIcon(
    // //  AssetImage("assets/rightarrow.png"),
    // // //  color: Colors.black,
    // //  size: 13,
    // //   color: Color.fromARGB(255, 90, 88, 88),
    // //  ),
                     
    // //                 ),
    // //                 ListTile(
    // //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    // //                    title: Text('data'),
    // //                     leading:const ImageIcon(
    // //  AssetImage("assets/rightarrow.png"),
    // // //  color: Colors.black,
    // //  size: 13,
    // //   color: Color.fromARGB(255, 90, 88, 88),
    // //  ),
                      
    // //                 ),
    // //                 ListTile(
    // //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    // //                    title: Text('data'),
    // //                     leading:const ImageIcon(
    // //  AssetImage("assets/rightarrow.png"),
    // // //  color: Colors.black,
    // //  size: 13,
    // //   color: Color.fromARGB(255, 90, 88, 88),
    // //  ),
                     
    // //                 ),
    //               ],
              
    //         ),


            ListTile(
            title: Text('Hymn'.tr,style: TextStyle(color: Colors.red,),),
             leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
    //  color: Colors.black,
     size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => hymnlist()));
            },
          ),
    //           ExpansionTile(
    //          title: Text(
    //             "Hymn",style: TextStyle(color: Colors.red),),
    //          leading:const ImageIcon(
    //  AssetImage("assets/tarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
    //          children: <Widget>[
    //          InkWell(
    //          child:ListTile(
    //           contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    //                   title: Text('data'),
    //                     leading:const ImageIcon(
    //  AssetImage("assets/rightarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
    //          ),
    //          onTap: ()=> 
    //            Navigator.push(context, MaterialPageRoute(builder: (context) => hymnlist()))
             
    //          ),
    //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    //                   title: Text('data'),
    //                     leading:const ImageIcon(
    //  AssetImage("assets/rightarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
                     
                  
    //                 ListTile(
    //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    //                   title: Text('data'),
    //                     leading:const ImageIcon(
    //  AssetImage("assets/rightarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
                     
    //                 ),
    //                 ListTile(
    //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    //                    title: Text('data'),
    //                     leading:const ImageIcon(
    //  AssetImage("assets/rightarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
                      
    //                 ),
    //                 ListTile(
    //                   contentPadding: EdgeInsets.only(left: 40, right: 0.0),
    //                    title: Text('data'),
    //                     leading:const ImageIcon(
    //  AssetImage("assets/rightarrow.png"),
    // //  color: Colors.black,
    //  size: 13,
    //   color: Color.fromARGB(255, 90, 88, 88),
    //  ),
                     
    //                 ),
    //               ],
              
    //         ),


           
          ListTile(
            title: Text('Palanquin Way'.tr,style: TextStyle(color: Colors.red),),
           leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
    //  color: Colors.black,
     size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => way()));
            }
          ),

           ListTile(
            title: Text('Biography of Gods'.tr,style: TextStyle(color: Colors.red),),
           leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
    //  color: Colors.black,
     size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => biographylist()));
            }
          ),
           ListTile(
            title: Text('Media'.tr,style: TextStyle(color: Colors.red),),
           leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
    //  color: Colors.black,
     size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => medialist()));
            }
          ),
          ListTile(
            title: Text('Donation'.tr,style: TextStyle(color: Colors.red),),
             leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
      size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: ()  {
               Navigator.push(context, MaterialPageRoute(builder: (context) => donationhome()));
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext      context) => donation1()));
            },
          ),
           ListTile(
            title: Text('Contact'.tr,style: TextStyle(color: Colors.red),),
            leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
      size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => contact()));
            },
          ),
           Divider(
            thickness: 0.3,
            color: Colors.black,
           ),
            ListTile(
            title: Text('Admin',style: TextStyle(color: Colors.teal),),
            leading:const ImageIcon(
     AssetImage("assets/tarrow.png"),
      size: 13,
      color: Color.fromARGB(255, 90, 88, 88),
     ),
            onTap: () {
              recognizer: new TapGestureRecognizer();
              // Navigator.push(context, MaterialPageRoute(builder: (context) => contact()));
              // ignore: deprecated_member_use
              launch('http://dashboard.moxiedeck.co.in');
            },
          ),
        ],
      ),
    );
  }
}