import 'package:flutter/material.dart';

class AllPhotos extends StatelessWidget {
  // AllPhotos({
  //   this.appBarColor = Colors.transparent,
  //   this.appBarTitle = "",
  // });

  // final String appBarTitle;
  // final Color appBarColor;

  List imgList = [
	Image.asset('assets/gallary/a.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/ab.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/ap.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/b.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/bc.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/c.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/cd.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/d.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/e.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/ef.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/f.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/fg.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/g.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/h.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/hi.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/i.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/j.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/jk.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/k.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/i.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/lm.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/m.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/n.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/o.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/op.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/p.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/q.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/qr.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/r.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/s.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/st.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/t.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/u.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/uv.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/v.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/w.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/wx.png',fit: BoxFit.cover,),
  Image.asset('assets/gallary/x.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/y.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/yz.png',fit: BoxFit.cover,),
	Image.asset('assets/gallary/z.png',fit: BoxFit.cover,),
];

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
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            child: Container(
              //                decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              // ),
               margin: EdgeInsets.all(10),
             
              child: Wrap(
                 spacing: 10,
                 runSpacing: 10,
                children: [
                  
                   for (var item in imgList)
                    // for (var i = 0; i < imgList.length; i++) 
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                        child:Container(
                        width: 160,
                        height: 160,
                          child: item,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                         ),
                         ),
                      
                      onTap: () => {},
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}