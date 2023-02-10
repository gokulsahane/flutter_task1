import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/media/gallary/home_page.dart';
import 'package:task1/media/photo.dart';





  
void main() { 
  runApp(medialist());  }
  
class medialist extends StatelessWidget {  
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
        body: MyCustom(),  
      ),  
    );  
  }  
}    
class MyCustom extends StatefulWidget {  

  // late DatabaseReference dbRef;

  @override  
  MyCustomState createState() {  
    return MyCustomState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomState extends State<MyCustom> {  
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
            'Media'.tr, style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 26,
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
                child:Column(children: [
                  Card(
                     color: Colors.white,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
                     child: new InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => gallry()));
    },
          child: Container(
            width: MediaQuery.of(context).size.width * 30,
            padding: EdgeInsets.all(10),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Padding(
          padding: const EdgeInsets.all(12.0),
                child:Text(
                  'Gallary'.tr,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.red),
                )
               )
              ],       
                    ),
            ))),
            SizedBox(height: 10,),
            Card(
                     color: Colors.white,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
                     child: new InkWell(
    // onTap: () {
    //    Navigator.push(context, MaterialPageRoute(builder: (context) => hymn2()));
    // },
          child: Container(
            width: MediaQuery.of(context).size.width * 30,
            padding: EdgeInsets.all(10),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Padding(
          padding: const EdgeInsets.all(12.0),
                child:Text(
                  "Video".tr,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.red),
                )
               )
              ],       
                    ),
            ))),
            SizedBox(height: 10,),
                   Card(
                     color: Colors.white,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
                     child: new InkWell(
    // onTap: () {
    //  Navigator.push(context, MaterialPageRoute(builder: (context) => hymn3()));
    // },
          child: Container(
            width: MediaQuery.of(context).size.width * 30,
            padding: EdgeInsets.all(10),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Padding(
          padding: const EdgeInsets.all(12.0),
                child:Text(
                  'Audio'.tr,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.red),
                )
               )
              ],       
                    ),
            ))),
            SizedBox(height: 10,),
            
           
           
            ]))
          ]))
          )]);
  }  
 }

