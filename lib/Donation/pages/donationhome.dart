import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/Donation/pages/widgets/onlinedonation.dart';
import 'package:task1/Donation/pages/widgets/cashdonation.dart';
import 'package:task1/Donation/utils/bubble_indicator_painter.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class donationhome extends StatefulWidget {
  // donationhome({required Key key}) : super(key: key);

  @override
  donationhomeState createState() => donationhomeState();
}

class donationhomeState extends State<donationhome>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;

  Color left = Colors.white;
  Color right = Colors.black;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
           title: const Text('|| श्री फरांडे महाराज ||'),
          centerTitle: true,
          backgroundColor:  const Color.fromARGB(255, 247, 61, 14),
           leading: IconButton(
    icon: const Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          // title: const Text(appTitle),  
          // centerTitle: true,
        ),  
        body: 
        
        SingleChildScrollView(
          
      // physics:  ClampingScrollPhysics(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(
          //       colors: <Color>[
          //         CustomTheme.loginGradientStart,
          //         CustomTheme.loginGradientEnd
          //       ],
          //       begin: FractionalOffset(0.0, 0.0),
          //       end: FractionalOffset(1.0, 1.0),
          //       stops: <double>[0.0, 1.0],
          //       tileMode: TileMode.clamp),
          // ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
      alignment: Alignment.center,
      child: Container(
         width: 360,
        height: 55,
        child:  Align(
          alignment: Alignment.center,
          child: Text(
            'देणगी फॉर्म'.tr, style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 26,
            fontWeight: FontWeight.w900,color: Color.fromARGB(255, 216, 45, 33)),
            // TextStyle(fontSize: 25),
            ),
          ),
        ),
                    ),
                     Container(
                      alignment: Alignment.center,
                      child:
                     Container(
                      alignment: Alignment.center,
        height: 35,
        width: 200,
        decoration:  const BoxDecoration(
          image:  DecorationImage(
              image:  AssetImage("assets/fancyLine.png"),
               fit: BoxFit.contain,
          )
        )
    ),),
              // Padding(
              //   padding: const EdgeInsets.only(top: 75.0),
              //   child: Image(
              //       height:
              //           MediaQuery.of(context).size.height > 800 ? 191.0 : 150,
              //       fit: BoxFit.fill,
              //       image: const AssetImage('assets/img/login_logo.png')),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: _buildMenuBar(context),
              ),
              Expanded(
                flex: 2,
                child: PageView(
                  controller: _pageController,
                  // physics:  ClampingScrollPhysics(),
                  onPageChanged: (int i) {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (i == 0) {
                      setState(() {
                        right = Colors.black;
                        left = Colors.white;
                      });
                    } else if (i == 1) {
                      setState(() {
                        right = Colors.white;
                        left = Colors.black;
                      });
                    }
                  },
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(),
                      child: onlinedonation(),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.expand(),
                      child: cashdonation(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
  

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 247, 61, 14),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      // child: CustomPaint(
      //   painter: BubbleIndicatorPainter(
      //     pageController: _pageController
          
      //     ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: _onSignInButtonPress,
                child: Text(
                  'Online'.tr,
                  style: TextStyle(
                      color: left,
                      fontSize: 16.0,
                      fontFamily: 'WorkSansSemiBold'),
                ),
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: _onSignUpButtonPress,
                child: Text(
                  'Cash'.tr,
                  style: TextStyle(
                      color: right,
                      fontSize: 16.0,
                      fontFamily: 'WorkSansSemiBold'),
                ),
              ),
            ),
          ],
        ),
      );
  }

  void _onSignInButtonPress() {
    _pageController.animateToPage(0,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onSignUpButtonPress() {
    _pageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}


