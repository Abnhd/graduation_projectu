import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/countsporty.dart';
import 'package:sportify_application/widget/appbar.dart';
class data_user extends StatefulWidget {
  @override
  _data_userState createState() => _data_userState();
}

class _data_userState extends State<data_user> {
//String ? selectedSubscription;
  String? selectedOption;
  String? selectedSubscription = 'نوع الاشتراك';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
         height: double.infinity,
         padding: EdgeInsets.all(18.0),

        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: NetworkImage('lib/asset/2.jpg'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
             ),
             ),
    
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
          children: [
             appbar(),
            SizedBox(height: 40),
            Text(
                  'بيانات الاشتراك',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white),
                ),
            SizedBox(height: 20),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'الاسم',
                  contentPadding: EdgeInsets.symmetric(horizontal: .5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 24,
                  )),

              // icon: Icons.person,
              // label: 'اسم المستخدم',
            ),
            SizedBox(height: 10.0),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'البريد الالكتروني',
                  contentPadding: EdgeInsets.symmetric(horizontal: .5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 24,
                  )),

              // icon: Icons.person,
              // label: 'اسم المستخدم',
            ),
            SizedBox(height: 10.0),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'الموقع',
                  contentPadding: EdgeInsets.symmetric(horizontal: .5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  suffixIcon: Icon(
                    Icons.location_on,
                    color: Colors.black,
                    size: 24,
                  )),

              // icon: Icons.person,
              // label: 'اسم المستخدم',
            ),
            SizedBox(height: 10.0),
            TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'رقم الهاتف',
                  contentPadding: EdgeInsets.symmetric(horizontal: .5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  suffixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 24,
                  )),

              // icon: Icons.person,
              // label: 'اسم المستخدم',
            ),
            SizedBox(
              height: 50,
            ),
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
              margin: EdgeInsets.only(bottom: 20),
              child: MaterialButton(
             
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                
                minWidth: 300,
                   height: 50,
                color: Colors.grey.withOpacity(0.5),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>countsporty()));
                },child: Text('متابعة' ,
              style: TextStyle(color: Colors.white,
              fontSize: 20),),),
            ),
          ],
        ),
      ),
    );
  }
}