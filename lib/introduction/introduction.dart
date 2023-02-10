import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';



  
void main() { 
  runApp(introduction());  }
  
class introduction extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
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
        body: introductionForm(),  
      ),  
    );  
  }  
}    
class introductionForm extends StatefulWidget {  

  // late DatabaseReference dbRef;

  @override  
  introductionFormState createState() {  
    return introductionFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class introductionFormState extends State<introductionForm> {  
  @override  
  Widget build(BuildContext context) {  

    return Stack(
          children: [
            Container(
                height: 550,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     image: const AssetImage('assets/im1.png'),
                //     colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.modulate,)
                //   )
                // ),
            ),
                 SingleChildScrollView(
                  child:Column(children: [
                  ImageSlideshow(
                    height: 320,
           indicatorColor: Colors.white,
          // onPageChanged: (value) {
          //   debugPrint('Page changed: $value');
          // },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'assets/slider1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/slider3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/slider4.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
      alignment: Alignment.center,
      child: Container(
        width: 360,
        height: 52,
        child:  Align(
          alignment: Alignment.center,
          child: Text(
            'Introduction'.tr, style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 26,
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
    
                    SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
          // color: Colors.white,
          border: Border.all(
                color: Colors.yellow ,
                width: 3.0 ,
              ),
          borderRadius: BorderRadius.circular(15),
     ),
     child:Column(children: [
      Container(
                      alignment: Alignment.center,
                      child:
       Container(
         alignment: Alignment.center,
        height: 200,
        width: 220,
        decoration:  const BoxDecoration(
          image:  DecorationImage(
              image:  AssetImage("assets/fm.png"),
               fit: BoxFit.fill,
          )
        )
       ),),
       SizedBox(height: 20,),
                 Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'introduction'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ),
     ]),       
                  
                
              ),]
            ))]))
          ]
          );
  }  
 }

