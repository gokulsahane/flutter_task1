import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/validator.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:toast/toast.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

  
void main() { 
  runApp(onlinedonation());  }
  
class onlinedonation extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
  //       appBar: AppBar(  
  //          title: const Text('|| श्री फरांडे महाराज ||'),
  //         centerTitle: true,
  //         backgroundColor:  const Color.fromARGB(255, 247, 61, 14),
  //          leading: IconButton(
  //   icon: const Icon(Icons.arrow_back, color: Colors.white),
  //   onPressed: () => Navigator.of(context).pop(),
  // ), 
  //         // title: const Text(appTitle),  
  //         // centerTitle: true,
  //       ),  
        body: MyCustomForm(),  
      ),  
    );  
  }  
}    
class MyCustomForm extends StatefulWidget {  

  // late DatabaseReference dbRef;

  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  final _key = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController userPhoneNumberController= TextEditingController();
  TextEditingController userEmailController =TextEditingController();
  TextEditingController userAddressController =TextEditingController();
  TextEditingController userDonationAmountController =TextEditingController();
  var userDonationDetailsController = "Online";
  TextEditingController userOccopationController =TextEditingController();
  TextEditingController userTalukaController =TextEditingController();
  TextEditingController userDistrictController =TextEditingController();
  TextEditingController userPinCodeController =TextEditingController();
   late Razorpay razorpay;
    late bool success;

   
   

     @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);

  }

   void clearText() {
    userNameController.clear();
    userPhoneNumberController.clear();
    userEmailController.clear();
    userAddressController.clear();
    userDonationAmountController.clear();
    // userDonationDetailsController.clear();
    userOccopationController.clear();
    userTalukaController.clear();
    userDistrictController.clear();
    userPinCodeController.clear();
  }

   @override
  void dispose() {
    userNameController.dispose();
    userPhoneNumberController.dispose();
    userEmailController.dispose();
    userAddressController.dispose();
    userDonationAmountController.dispose();
    // userDonationDetailsController.dispose();
    userOccopationController.dispose();
    userTalukaController.dispose();
    userDistrictController.dispose();
    userPinCodeController.dispose();
    super.dispose();
     razorpay.clear();
     
  }

   void openCheckout(){
    var options = {
      "key" : "rzp_test_ahgyxJWWVWkqP4",
      "amount" : num.parse(userDonationAmountController.text)*100,
      "name" : "Sample App",
      "description" : "Payment for the some random product",
      "prefill" : {
        "contact" : userPhoneNumberController.text,
        "email" :  userEmailController.text,
      },
      "external" : {
        "wallets" : ["paytm"]
      }
             
    };

    try{
       razorpay.open(options);

    }catch(e){
      print(e.toString());
    }

  }

  void handlerPaymentSuccess(){
    print("Pament success");
     Toast.show("Pament success", );
      setState(()async {
      success=true;
      });
        
       

    //  if(success=true){
    //  setState(() {
    //                 var Name = userNameController.text;
    //                 var Occopation = userOccopationController.text;
    //                 var Address = userAddressController.text;
    //                 var Taluka = userTalukaController.text;
    //                 var District = userDistrictController.text;
    //                 var Pin_Code = userPinCodeController.text;
    //                 var Phone_Number = userPhoneNumberController.text;
    //                 var Email = userEmailController.text;
    //                 var Donation_Amount = userDonationAmountController.text;
    //                 var Donation_Details = userDonationDetailsController.text;
    //                 Donation( Name, Phone_Number, Email, Address, Donation_Amount, Occopation, Taluka, District, Pin_Code, Donation_Details);
    //               }
    //              );}
  }

  void handlerErrorFailure(){
    print("Pament error");
    Toast.show("Pament error", );
  }

  void handlerExternalWallet(){
    print("External Wallet");
    Toast.show("External Wallet", );
  }

  
  final _formKey = GlobalKey<FormState>();  
   bool ispressed = false;
  @override  
  Widget build(BuildContext context) {  
    //  String name, Phone_Number, Email, Address, Donation_Amount;
    // Build a Form widget using the _formKey created above.  
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
    //                 Container(
    //   alignment: Alignment.center,
    //   child: Container(
    //      width: 360,
    //     height: 55,
    //     child:  Align(
    //       alignment: Alignment.center,
    //       child: Text(
    //         'देणगी फॉर्म'.tr, style: GoogleFonts.inknutAntiqua(fontStyle: FontStyle.normal, fontSize: 26,
    //         fontWeight: FontWeight.w900,color: Color.fromARGB(255, 216, 45, 33)),
    //         // TextStyle(fontSize: 25),
    //         ),
    //       ),
    //     ),
    //                 ),
    //                 Container(
    //                   alignment: Alignment.center,
    //                   child:
    //                  Container(
    //                   alignment: Alignment.center,
    //     height: 35,
    //     width: 200,
    //     decoration:  const BoxDecoration(
    //       image:  DecorationImage(
    //           image:  AssetImage("assets/fancyLine.png"),
    //            fit: BoxFit.contain,
    //       )
    //     )
    // ),),
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
                      child:Form(
                         key: _key,
                        child: Column(
                        children: [
                          TextFormField(
                            validator: (value) =>
                        Validator.fullNameValidate(value ?? ""),
                            keyboardType: TextInputType.name,
                            textCapitalization: TextCapitalization.sentences,
                            controller: userNameController,
                            style: const TextStyle(color:Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Name".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,),
                            TextFormField(
                              validator: (value) =>
                        Validator.OccopationValidate(value ?? ""),
                              textCapitalization: TextCapitalization.sentences,
                            keyboardType: TextInputType.name,
                            controller: userOccopationController,
                            style: const TextStyle(color:Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Occopation".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,),
                            TextFormField(
                               validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter address';
                                     }
                                   return null;
                                       },
                        //       validator: (value) =>
                        // Validator.AddressValidate(value ?? ""),
                              //errorText: validator ? 'Please Enter Your Address' : null,
                              textCapitalization: TextCapitalization.sentences,
                            keyboardType: TextInputType.streetAddress,
                            controller: userAddressController,
                            style: const TextStyle(color:Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Address".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,),
                            TextFormField(
                               validator: (value) =>
                        Validator.TalukaValidate(value ?? ""),
                              textCapitalization: TextCapitalization.sentences,
                            keyboardType: TextInputType.streetAddress,
                            controller: userTalukaController,
                            style: const TextStyle(color:Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Taluka".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,),
                           TextFormField(
                             validator: (value) =>
                        Validator.DistrictValidate(value ?? ""),
                            textCapitalization: TextCapitalization.sentences,
                            keyboardType: TextInputType.streetAddress,
                            controller: userDistrictController,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "District".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                             validator: (value) =>
                        Validator.PinCodeValidate(value ?? ""),
                            textCapitalization: TextCapitalization.sentences,
                            keyboardType: TextInputType.number,
                             controller: userPinCodeController,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Pin Code".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            validator: (value) =>
                        Validator.validatePhoneNumber(value ?? ""),
                            textCapitalization: TextCapitalization.none,
                            keyboardType: TextInputType.phone,
                             controller: userPhoneNumberController,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Phone Number".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            validator: (value) => Validator.validateEmail(value ?? ""),
                            keyboardType: TextInputType.emailAddress,
                            controller: userEmailController,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Email".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                             validator: (value) => Validator.DonationAmountValidate(value ?? ""),
                            // validator: (value) {
                            //     if (value == null || value.isEmpty) {
                            //       return 'Please enter donation details';
                            //          }
                            //        return null;
                            //            },
                            keyboardType: TextInputType.number,
                            controller: userDonationAmountController,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 61, 14),

                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Donation Amount".tr,
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.extended(
             onPressed: ()  {
              // if(selectedValue = = Online){}
               if (_key.currentState!.validate()) {
                // if(value:Online){}
                   openCheckout();{
                  if(success=true){
                   setState(() {
                    var Name = userNameController.text;
                    var Occopation = userOccopationController.text;
                    var Address = userAddressController.text;
                    var Taluka = userTalukaController.text;
                    var District = userDistrictController.text;
                    var Pin_Code = userPinCodeController.text;
                    var Phone_Number = userPhoneNumberController.text;
                    var Email = userEmailController.text;
                    var Donation_Amount = userDonationAmountController.text;
                    var Donation_Details = userDonationDetailsController;
                      Donation( Name, Phone_Number, Email, Address, Donation_Amount, Occopation, Taluka, District, Pin_Code, Donation_Details);
                  }
                  );
                  }
                  }
                 
               }
                  },

           backgroundColor: const Color.fromARGB(255, 247, 61, 14),
           label:  Text("Submit".tr),
          ),
          FloatingActionButton.extended(
            heroTag: 'second1',
            onPressed: () => {
               clearText()
              // Navigator.push(context, MaterialPageRoute(builder: (context) => donation())),
            },
            backgroundColor: const Color.fromARGB(255, 247, 61, 14),
            label:  Text("Clear".tr),
          ),
        ]
                          ),
                          
                          
                        ],
                        
                      ),
                      
                    )
                    
                    ),
                    SizedBox(height: 120,)
                    
                  ],
                ),
              ),
            )
        ],
          );
  }  
  

 


 

  Future<void> Donation( Name, Phone_Number, Email, Address, Donation_Amount, 
  Occopation, Taluka, District, Pin_Code, Donation_Details) async {
    print("Added");
    CollectionReference Donation =
        FirebaseFirestore.instance.collection('donation');
    String uId = DateTime.now().microsecondsSinceEpoch.toString();
    // return Donation.add({'uId': uId, 'Name': Name});

     return await Donation
        .doc(uId)
        .set({'Date':DateTime.now(), 'Name': Name, 'Phone_Number': Phone_Number,'Email':Email,'Address':Address,'Donation_Amount':Donation_Amount,
         'Occopation':Occopation, 'Taluka':Taluka, 'District':District, 'Pin_Code':Pin_Code, 'Donation_Details':Donation_Details})
        .then((value) => {
              CherryToast.success(
                 toastPosition: Position.bottom,
                 autoDismiss: false,
                displayIcon: success,
                displayCloseButton: true,
                title: Text('Data Saved Successfully'),
                borderRadius: 15,
              ).show(context),
              clearText()
            },);
        
   }}
   
   



