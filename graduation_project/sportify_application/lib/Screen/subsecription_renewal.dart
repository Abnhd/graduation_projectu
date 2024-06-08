import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/homepage.dart';
import 'package:sportify_application/widget/appbar.dart';
class subsecription_renewal extends StatefulWidget {
  @override
  _subsecription_renewal createState() => _subsecription_renewal();
}

class _subsecription_renewal extends State<subsecription_renewal> {
//String ? selectedSubscription;
  String? selectedOption;
  String? selectedSubscription = 'نوع الاشتراك';
  final username = TextEditingController();
  final password = TextEditingController();
  //A bool variable for show and hide password
  bool isVisible = false;
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        width: double.infinity,
         height: double.infinity,
         padding: EdgeInsets.all(18.0),

        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [Colors.grey.withOpacity(0.5),Colors.red.withOpacity(0.5)],
                    begin:Alignment.topLeft,
                    end: Alignment.bottomRight),
                    
                  ),
                   child: Form(
              key: formKey,
            
            
             
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
          children: [
             appbar(),
            SizedBox(height: 40),
            Text(
                  'تجديد الاشتراك',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white),
                ),
            SizedBox(height: 20),
             Container(
                    margin: const EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple.withOpacity(.2)),
                    child: TextFormField(
                      controller: username,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "الرجاء ادخال اسم المستخدم";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "اسم المستخدم",
                      ),
                    ),
                  ),
            SizedBox(height: 10.0),
             Container(
                    margin: const EdgeInsets.all(8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple.withOpacity(.2)),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "الرجاء ادخال كلمة السر";
                        }
                        return null;
                      },
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                          icon: const Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "كلمة السر",
                          suffixIcon: IconButton(
                              onPressed: () {
                                //In here we will create a click to show and hide the password a toggle button
                                setState(() {
                                  //toggle button
                                  isVisible = !isVisible;
                                });
                              },
                               icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                  ),

                  const SizedBox(height: 10),


            
            
            Container(
            margin: EdgeInsets.only(left: 250),
            child: Text("حسابات النادي",style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white),),
          ),
           SizedBox(height: 30,),
            Container(
                margin: EdgeInsets.only(left: 180),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    
                    Container(
                      height: 20,
                      width: 150,
                       decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                      
                     
                  ),child: Text("العمقي 127456727",style: TextStyle(fontWeight: FontWeight.bold),),
                    ) ,Icon(Icons.check_circle),
                  ],
                ),
              ),
               SizedBox(height: 30,),
                Container(
                margin: EdgeInsets.only(left: 180),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    
                    Container(
                      height: 20,
                      width: 150,
                       decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                      
                     
                  ),child: Text("العمقي 127456727",style: TextStyle(fontWeight: FontWeight.bold),),
                    ) ,Icon(Icons.check_circle),
                  ],
                             ),
               ),
               SizedBox(height: 30,),
               Container(
                         margin: EdgeInsets.only(left: 180),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    
                    
                    Container(
                      height: 20,
                      width: 150,
                       decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                      
                     
                  ),child: Text("البسيري 1274569867",style: TextStyle(fontWeight: FontWeight.bold),),
                    ) ,Icon(Icons.check_circle),
                  ],
                             ),
               ),
                  SizedBox(height: 30,),
               
            
          
      
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
          

              children: [
               
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 49, 47, 47),
                    border: Border.all(
                      color: Colors.white, 
                      width: 2.0, 
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: DropdownButton<String>(
                    value: selectedOption,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    iconEnabledColor: Colors.white10,
                    elevation: 16,
                    
                    dropdownColor: Color.fromARGB(255, 80, 78, 78),
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue;
                        selectedSubscription = newValue;
                      });
                    },

                    items: <String>[
                      ' 150ر.س ',
                      ' 300 ر.س',
                      '900 ر.س',
                      ' 1200 ر.س',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(width: 20,),

                Text(":نوع الاشتراك",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize:20.0),),


                
              ],
            ),

            
            SizedBox(height: 20.0),
            
          Container(
            width: 340,
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "ارفاق سند الايداع",
                
                
                prefixIcon: IconButton(onPressed: (){

                }, icon: Icon(Icons.image),),
                suffixIcon: IconButton(onPressed: (){

                }, icon: Icon(Icons.camera_enhance))
                

                
          
              ),
            ),
          ),
          SizedBox(height: 30,),
         
               
               
               
                    

                   

                
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: MaterialButton(
             
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                
                minWidth: 300,
                   height: 50,
                color: Colors.grey.withOpacity(0.5),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                },child: Text("تم" ,
              style: TextStyle(color: Colors.white,
              fontSize: 20),),),
            ),
          ]
        ),
             ),
          
        ),
      ),
    );
    
    
    
  }
}