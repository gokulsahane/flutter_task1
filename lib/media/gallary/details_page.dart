import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  // final String title;
  // final String photographer;
  // final String price;
   String details;
  final int index;
  DetailsPage(
      {required this.imagePath,
      // @required this.title,
      // @required this.photographer,
      // @required this.price,
      required this.details,
      required this.index});
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
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       
                        Text(
                          details,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
            
                         FloatingActionButton.extended(
        onPressed: () {
           Navigator.of(context).pop();
        },
        label: const Text('BACK TO GALLERY'),
        // icon: const Icon(Icons.thumb_up),
        backgroundColor: Color.fromARGB(255, 247, 61, 14),
      ),
                  
                    ],
                  ),
                  SizedBox(height: 5,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
