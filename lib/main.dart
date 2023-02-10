import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task1/home.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
import 'language.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
runApp(HomePage());
}

class HomePage extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return GetMaterialApp(
  translations: LocaleString(),
  locale: const Locale('mr','IN'),
	// title: 'Splash Screen',
	theme: ThemeData(
	),
	home: AnimatedSplashScreen(
           
            splashIconSize: 600,
            duration: 5000,
            splash: Column(children: [
              SizedBox(height: 170,),
              Image.asset('assets/fm.png',width: 200,
                                        height: 180,
                                        fit:BoxFit.fill  ),
              SizedBox(height: 15,),
              Text("||धर्मगुरू श्री. श्री। फरांडे महाराज मठ संस्थान||", 
              style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 16,
            fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 8, 68, 117)),
              // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
              // color: Color.fromARGB(255, 3, 35, 61)
              // ),
              )

            ],),
              // 'assets/im1.png',
            nextScreen: MyApp(),
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.white),
	debugShowCheckedModeBanner: false,
	);
}
}

// class MyHomePage extends StatefulWidget {
// @override
// _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
// @override
// void initState() {
// 	super.initState();
// 	Timer(const Duration(seconds: 4),
// 		()=>Navigator.pushReplacement(context,
// 										MaterialPageRoute(builder:
// 														(context) =>
// 														HomeScreen()
// 														)
// 									)
// 		);
// }
// @override
// Widget build(BuildContext context) {
// 	return Container(
//   child: FittedBox(
//   child: Image.asset('assets/im1.png'),
//   fit: BoxFit.none,
// )
//   );
// }
// }

