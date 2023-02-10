import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/contact.dart';
import 'package:task1/donation.dart';
import 'package:task1/introduction/introduction.dart';

import 'NavBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},
    {'name':'हिंदी','locale': Locale('hi','IN')},
    {'name':'मराठी','locale': Locale('mr','IN')},
  ];
  // final _advancedDrawerController = AdvancedDrawerController();

   updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return 
    AdvancedDrawer(
      // backdropColor:Colors.yellow,
      // //  Color.fromARGB(255, 243, 215, 88),
      // controller: _advancedDrawerController,
      // animationCurve: Curves.easeInOut,
      // animationDuration: const Duration(milliseconds: 300),
      // animateChildDecoration: true,
      // rtlOpening: false,
      // // openScale: 1.0,
      // disabledGestures: false,
      // childDecoration: const BoxDecoration(
      //   // NOTICE: Uncomment if you want to add shadow behind the page.
      //   // Keep in mind that it may cause animation jerks.
      //   // boxShadow: <BoxShadow>[
      //   //   BoxShadow(
      //   //     color: Colors.black12,
      //   //     blurRadius: 0.0,
      //   //   ),
      //   // ],
      //   borderRadius: const BorderRadius.all(Radius.circular(16)),
      // ),
       drawer: NavBar(),
//       SafeArea(
//         child: Container(
//           child: ListTileTheme(
//             textColor: Color.fromARGB(244, 2, 2, 2),
//             iconColor: Color.fromARGB(255, 27, 27, 27),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Container(
//                   width: 250.0,
//                   height: 250.0,
//                   margin: const EdgeInsets.only(
//                     top: 24.0,
//                     bottom: 64.0,
//                   ),
//                   clipBehavior: Clip.antiAlias,
//                   decoration: const BoxDecoration(
//                     color: Colors.yellow,
//                     // color: Color.fromARGB(255, 243, 215, 88),
//                     shape: BoxShape.circle,
                    
//                   ),
//                   child: Image.asset(
//                     'assets/im1.png',
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
//                   },
//                       leading:const ImageIcon(
//      AssetImage("assets/arrow.png"),
//     //  color: Colors.black,
//      size: 15,
// ),
                  
//                   title:  Text('Home'.tr,
//                   style: GoogleFonts.alatsi(fontStyle: FontStyle.normal, fontSize: 17,
//                   color: Colors.red),),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => donation()));
//                   },
//                   leading:const ImageIcon(
//      AssetImage("assets/arrow.png"),
//     //  color: Colors.black,
//      size: 15,
// ),
//                   //  leading:Icon(Icons.favorite),
//                   title:  Text('Donation Form'.tr,
//                    style: GoogleFonts.alatsi(fontStyle: FontStyle.normal, fontSize: 17,
//                   color: Colors.red),),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => contact()));
//                   },
//                     leading:const ImageIcon(
//      AssetImage("assets/arrow.png"),
//     //  color: Colors.black,
//      size: 15,
// ),
//                   title:  Text('Contact us'.tr,
//                   style: GoogleFonts.alatsi(fontStyle: FontStyle.normal, fontSize: 17,
//                   color: Colors.red),
//                 ),),
// //                 ListTile(
// //                   onTap: () {},
// //                     leading:const ImageIcon(
// //      AssetImage("assets/arrow.png"),
// //     //  color: Colors.black,
// //      size: 17,
// // ),
// //                   title:  Text('Settings'.tr,
// //                   style: TextStyle(color:  Color.fromARGB(255, 247, 61, 14),),),
// //                 ),
//                 Spacer(),
//                 DefaultTextStyle(
//                   style: const TextStyle(
//                     fontSize: 12,
//                     color: Colors.white54,
//                   ),
//                   child: Container(
//                     margin: const EdgeInsets.symmetric(
//                       vertical: 16.0,
//                     ),
                    
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
      child: Scaffold(
        appBar: AppBar(
           backgroundColor:  Color.fromARGB(255, 247, 61, 14),
          title: const Text('|| श्री फरांडे महाराज ||'),
          centerTitle: true,
          // leading: IconButton(
          //   onPressed: _handleMenuButtonPressed,
          //   icon: ValueListenableBuilder<AdvancedDrawerValue>(
          //     valueListenable: _advancedDrawerController,
          //     builder: (_, value, __) {
          //       return AnimatedSwitcher(
          //         duration: const Duration(milliseconds: 250),
          //         child: Icon(
          //           value.visible ? Icons.clear : Icons.menu,
          //           key: ValueKey<bool>(value.visible),
          //         ),
          //       );
          //     },
          //   ),
          // ),
           actions: [
                 
                 PopupMenuButton(
                  shape: ContinuousRectangleBorder(
         borderRadius: BorderRadius.circular(30),
       ),
       icon: Image.asset('assets/language.png'),
                   // add icon, by default "3 dot" icon
                   // icon: Icon(Icons.book)
                   itemBuilder: (context){
                     return [

                            const PopupMenuItem<int>(
                                value: 1,
                                child: Text("English"),
                            ),

                            const PopupMenuItem<int>(
                                value: 2,
                                child: Text("हिन्दी"),
                            ),
                            const PopupMenuItem<int>(
                                value: 3,
                                child: Text("मराठी"),
                            ),
                        ];
                   },
                   onSelected:(value){
                      if(value == 1){
                          var locale = Locale('en','US');
                          Get.updateLocale(locale);
                      }else if(value == 2){
                        var locale = Locale('hi','IN');
                        Get.updateLocale(locale);
                      }else if(value == 3){
                        var locale = Locale('mr','IN');
                        Get.updateLocale(locale);
                      }
                   }
                  ),

                   
            ],
        ),
        drawer: NavBar(),
        body: introductionForm(),
      
      ),
    );
  }

  
}