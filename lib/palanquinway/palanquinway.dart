import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



  
void main() { 
  runApp(way());  }
  
class way extends StatelessWidget {  
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
        body: CustomForm(),  
      ),  
    );  
  }  
}    
class CustomForm extends StatefulWidget {  

  // late DatabaseReference dbRef;

  @override  
  CustomFormState createState() {  
    return CustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class CustomFormState extends State<CustomForm> {  
  @override  
  Widget build(BuildContext context) {  

    return Stack(
          children: [
            Container(
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/im1.png'),
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.2), BlendMode.modulate,)
                  )
                ),
            ),
                 SingleChildScrollView(
              child: Container(
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
            'Palanquin Way1'.tr, style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 26,
            fontWeight: FontWeight.w900,color:Color.fromARGB(255, 216, 45, 33)),
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
     child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Container(
        // width: 360,
        // height: 230,
        padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
          // color: Colors.white,
          border: Border.all(
                color: Colors.red ,
                // width: 3.0 ,
              ),
          borderRadius: BorderRadius.circular(15),
     ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Palanquintext1'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
       Container(
        // width: 360,
        // height: 230,
        padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
          // color: Colors.white,
          border: Border.all(
                color: Colors.red ,
                // width: 3.0 ,
              ),
          borderRadius: BorderRadius.circular(15),
     ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Palanquintext2'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'first'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text1'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
       Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'second'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text2'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'three'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text3'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'four'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text4'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'five'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text5'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'six'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text6'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'seven'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text7'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      SizedBox(height: 20,),
      Container(
        // width: 360,
        // height: 230,
       
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
             'eight'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(color: Colors.red,
               fontSize: 21,fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height: 7,),
            Text(
             'day: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
            Text(
             'date: '.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
            SizedBox(height: 7,),
           Text(
             'text8'.tr,
             textAlign: TextAlign.left,
             style: TextStyle(
               fontSize: 14,
             ),
           ),
           SizedBox(height: 5,),
            Divider(
          //   indent: 4,
          // endIndent: 4,
            thickness: 0.8,
            color: Colors.black,
          ),
                  ])
          // child: Text(
          //   'Palanquin text2'.tr,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 14,
          //   ),
          // ),
        ),
      ),
      
      ])
                      
                  
                
              ),]
            )))
          ]
          );
  }  
 }

