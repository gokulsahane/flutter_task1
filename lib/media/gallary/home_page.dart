import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/gallary/im111.png',
    details:
            "im1".tr,
              ),
  ImageDetails(
    imagePath: 'assets/gallary/im2.png',
    details:
             "im2".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im3.png',
    details:
              "im3".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im4.png',
    details:
            "im4".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im5.png',
    details:
            "im5".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im6.png',
    details:
            "im6".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im7.png',
    details:
             "im7".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im8.png',
    details:
              "im8".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im9.png',
    details:
                 "im9".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im10.png',
    details:
               "im10".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im11.png',
    details:
              "im11".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im12.png',
    details:
              "im12".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im13.png',
    details:
                "im13".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im14.png',
    details:
                "im14".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im15.png',
    details:
                 "im15".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im16.png',
    details:
                "im16".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im17.png',
    details:
                "im17".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im18.png',
    details:
                 "im18".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im19.png',
    details:
                 "im19".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im20.png',
    details:
                "im20".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im21.png',
    details:
                "im21".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im22.png',
    details:
                "im22".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im23.png',
    details:
                "im23".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im24.png',
    details:
                "im24".tr   ),
  ImageDetails(
    imagePath: 'assets/gallary/im25.png',
    details:
                 "im25".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im26.png',
    details:
                  "im26".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im27.png',
    details:
                 "im27".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im28.png',
    details:
                 "im28".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im29.png',
    details:
                 "im29".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im30.png',
    details:
                 "im30".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im31.png',
    details:
                 "im31".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im32.png',
    details:
                  "im32".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im33.png',
    details:
                   "im33".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im34.png',
    details:
                    "im34".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im35.png',
    details:
                     "im35".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im36.png',
    details:
                      "im36".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im37.png',
    details:
                        "im37".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im38.png',
    details:
                       "im38".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im39.png',
    details:
                     "im39".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im40.png',
    details:
                     "im40".tr  ),
  ImageDetails(
    imagePath: 'assets/gallary/im41.png',
    details:
                     "im41".tr  ),
];

class gallry extends StatelessWidget {
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
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // SizedBox(
            //   height: 40,
            // ),
            // Text(
            //   'Gallery',
            //   style: TextStyle(
            //     fontSize: 25,
            //     fontWeight: FontWeight.w600,
            //     color: Colors.white,
            //   ),
            //   textAlign: TextAlign.center,
            // ),
            // SizedBox(
            //   height: 40,
            // ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(30),
                //     topRight: Radius.circular(30),
                //   ),
                // ),
                 child:GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              // title: _images[index].title,
                              // photographer: _images[index].photographer,
                              // price: _images[index].price,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  // final String price;
  // final String photographer;
  // final String title;
  final String details;
  ImageDetails({
    required this.imagePath,
    // @required this.price,
    // @required this.photographer,
    // @required this.title,
    required this.details,
  });
}
