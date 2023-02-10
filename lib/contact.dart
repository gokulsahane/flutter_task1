import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/home.dart';
import 'package:get/get.dart';

void main() => runApp(contact());

// class contact extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       // theme: ThemeData(
  //       // ),
  //       // home: ScrollDemo());
  // );}
//}

// class contact extends StatefulWidget {
//   @override
//   contactState createState() => contactState();
// }

class contact extends StatelessWidget {
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
      body: Padding(
        padding:  EdgeInsets.all(2.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
               Container(
        width: 360,
        height: 54,
        // color: Colors.blue,
        child:  Align(
          alignment: Alignment.center,
          child: Text(
            'Contact Information'.tr,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 26,
            fontWeight: FontWeight.w900,color:  Color.fromARGB(255, 216, 45, 33)),
          ),
        ),
      ),
      Container(
        height: 35,
        width: 200,
        decoration:  const BoxDecoration(
          image:  DecorationImage(
              image:  AssetImage("assets/fancyLine.png"),
              fit: BoxFit.contain,
          )
        )
    ),
    SizedBox(height: 10,),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        padding: const EdgeInsets.all(20.0),
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
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '1. President'.tr,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
       Container(
      height: 180,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(6),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Sri Sri Sri Parampujya Vishwanath Narayan Waghmode (Farande Maharaj)- President'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 4,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'M.PO .Anjangaon (Khe) Ta .Madha District Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 4,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9527771070',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
      Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '2. Abbot	'.tr,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
        Container(
      height: 173,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Sri Sri Sri Parampujya Kheloba Rajaram Waghmode (Farande Maharaj)- Abbot'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'M.PO .Anjangaon (Khe) Ta .Madha District Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9588492123',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   3',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 173,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Somnath Vishambhar Waghmare'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mohol District Solapur, Pokharapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9665373176',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   4',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 160,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Santosh Narayan Bhandare'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'M.P. Uran T. Uran District Raigad'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9869787317',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   5',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 204,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Santoshkumar Nagnath Waghpatil (Village Development Officer District Solapur)'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'M.Po. Gavtya Maruti Chowk Mohol T. Mohol District Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9823822985\n8081922985',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   6',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 180,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Dr. Vishnupant Laxmanrao Gawde (MBBS, DPA, Mumbai Psychiatrist)'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '13 A Indiranagar Bijapur Road Solapur District Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9423065116',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   7',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 180,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Mahadev Trimbak Kakade (BABG, AMS, MG, LLB)'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Bhandegaon Po. Sarole T. Barshi Jihwa Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9422628296\n9823828296',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   8',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 160,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Lord Nana Kale'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Po. Gotewadi Mohol District Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9922773237',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   9',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 160,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Haridas Vasudeva Wolves'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Po. Savleshwar Mohol District Solapur'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9766801428',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   10',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
               color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 160,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Lord Birmal Karbhari'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Po. Wakdi t. Paranda District Osmanabad'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9767313150',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
      SizedBox(height: 40,),
       Container(
          child:  Align(
          alignment: Alignment.topLeft,
          child: Text(
            '   11',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
        ),
        ),
      Container(
      height: 160,
      child: Card(  
        elevation: 9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(  
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,  
        children:  <Widget>[  
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                 Text(
                    'Name :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Sagar Somaji Mane'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
          Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Address :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    'Mr. Po. Kuralp Walwa District Sangli'.tr,
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 3,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
           Divider(
            indent: 8,
          endIndent: 8,
            thickness: 0.5,
            color: Colors.black,
          ),
          Container(
            padding:  EdgeInsets.all(6),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                 Text(
                    'Phone Number :  '.tr,
                    style: TextStyle(fontSize: 14,backgroundColor: Color.fromARGB(255, 255, 240, 109)),
                  ),
                  Expanded(child: 
                 Text(
                    '9730032724',
                    style: TextStyle(fontSize: 14),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.visible,
                  ),)
            ],)
          ),
         ],  
      ),
    ),  
  ),
      ),
  
      ]),
          
           )
           
           
           ]))
        ),
      );
  }
}


















// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
 
// void main() => runApp(const contact());
 
// class contact extends StatelessWidget {
//   const contact({Key? key}) : super(key: key);
 
//   static const String _title = '';
 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title),
//         backgroundColor: const Color.fromARGB(255, 243, 130, 101),
//         leading: IconButton(
//     icon: const Icon(Icons.arrow_back, color: Colors.white),
//     onPressed: () => Navigator.of(context).pop(),
//   ), 
//         ),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }
 
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
 
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
 
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           const SizedBox(height: 30,),
//           Container(
//              width: 360,
//         height: 30,
//         // ignore: sort_child_properties_last
//         child:  Align(
//           alignment: Alignment.center,
//           child: Text(
//             'Contact Information'.tr,
//             maxLines: 3,
//             textAlign: TextAlign.start,
//             style: const TextStyle(
//               fontSize: 25,
//             ),
//           ),
//         ),
//             ),
      
//         Container(
//           height: 45,
//           width: 300,
//          decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/fancyLine.png"),
//               fit: BoxFit.scaleDown,
//           )
//         )
//         ),
//           Container(
//             margin: const EdgeInsets.only(left: 20, top:10, right: 20, bottom:20),
//              height: 950,
//              width: double.infinity,
//             // alignment: Alignment.center,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(05),
//               boxShadow: const [
//                 BoxShadow(
//                     color: Colors.deepPurpleAccent,
//                     blurRadius: 10,
//                     spreadRadius: 0,
//                     offset: Offset(0, 0)
//                 ),
//               ],
//               color: Colors.white,
//             ),
//              child:SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Row(
//                         children:  <Widget>[
//                           Padding(
//     padding: const EdgeInsets.only(top: 20,left: 10),
//     child: Text('No'.tr),
    
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Name'.tr),
//   ),
//   Divider(thickness: 2,),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 125),
//     child: Text('Designation'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mobile Number'.tr),
//   ),
                      
//                         ],
//                       ),
//                       Row(
//                         children:  <Widget>[
//                           const Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('1'),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(top: 20,left: 30),
//     child: Text('Sri Sri Sri\nParampujya Vishwanath\nNarayan Waghmode\n(Farande Maharaj)\n- President'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('President'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 40),
//     child: Text('9527771070'),
//   ),
                        
//                         ],
//                       ),
//                       Row(
//                         children: <Widget>[
//                            const Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('2'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Sri Sri Sri\nParampujya Kheloba\nRajaram Waghmode\n(Farande Maharaj)\n- Abbot'.tr),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(top: 20,left: 60),
//     child: Text('Abbot'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 60),
//     child: Text('9588492123'),
//   ),
                        
//                         ],
//                       ),
//                        Row(
//                         children:  <Widget>[
//                           const Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('3'),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr. Somnath\nVishambhar Waghmare'.tr),
//   ),
//   const Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   const Padding(
//     padding: EdgeInsets.only(top: 20,left: 110),
//     child: Text('9665373176'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                           const Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('4'),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr. Santosh\nNarayan Bhandare'.tr),
//   ),
//   const Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 140),
//     child: Text('9869787317'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                           Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('5'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr. Santoshkumar\nNagnath Waghpatil\n(Village Development\nOfficer District\n Solapur)'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 105),
//     child: Text('9823822985\n8081922985'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                            Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('6'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr. Dr. Vishnupant\nLaxmanrao Gawde\n(MBBS, DPA,\nMumbai Psychiatrist)'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 120),
//     child: Text('9423065116'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                            Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('7'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr.Mahadev Trimbak\nKakade (BABG, AMS,\nMG, LLB)'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 120),
//     child: Text('9422628296\n9823828296'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                            Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('8'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr. Lord\nNana Kale'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 188),
//     child: Text('9922773237'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                            Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('9'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text('Mr. Haridas\nVasudeva Wolves'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 140),
//     child: Text('9766801428'),
//   ),
//                         ]),
//                         Row(
//                         children:  <Widget>[
//                            Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('10'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 25),
//     child: Text('Mr. Lord\nBirmal Karbhari'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 145),
//     child: Text('9767313150'),
//   ),
//                         ]),
//                          Row(
//                         children:  <Widget>[
//                            Padding(
//     padding: EdgeInsets.only(top: 20,left: 10),
//     child: Text('11'),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 25),
//     child: Text('Mr. Sagar \nSomaji Mane'.tr),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 30),
//     child: Text(''),
//   ),
//   Padding(
//     padding: EdgeInsets.only(top: 20,left: 160),
//     child: Text('9730032724'),
//   ),
//                         ]),
                        
//                     ],
//                   ),
//                 ),
  
//           ),
//         ]),
          
//     );
//   }
// }