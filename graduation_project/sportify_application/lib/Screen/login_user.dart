import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/HomeScreen.dart';

class login_user extends StatefulWidget {
  const login_user({super.key});

  @override
  State<login_user> createState() => _login_userState();
}

class _login_userState extends State<login_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
         
          Text('sportify',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:30.0 ),),
          Container(
            child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 250),
                child: Text("اسم المستخدم",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),

              Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    color: Colors.grey,
                   
                ),
              
                child: TextFormField(
                  
                  decoration: InputDecoration(
                    
                    suffixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
              
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 250),
                child: Text("كلمه المرور",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),

              Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                    color: Colors.grey,
                   
                ),
              
                child: TextFormField(
                  decoration: InputDecoration(
                    
                    
                    suffixIcon: Icon(Icons.visibility),
                    enabledBorder: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
              
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 250),
                child: InkWell(
                  onTap: (){

                  },
                  child: Text("هل نسيت كلمه السر",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                ),)
            ],
          ),
          ),
          SizedBox(height: 200,),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },child: Text('تسجيل الدخول' ,
              style: TextStyle(color: Colors.white,
              fontSize: 20),),),
            ),
          

       

        ],
      ),

    );
  }
}