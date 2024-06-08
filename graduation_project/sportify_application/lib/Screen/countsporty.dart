
import 'package:flutter/material.dart';

class countsporty extends StatefulWidget {
  const countsporty({super.key});

  @override
  State<countsporty> createState() => _countsportyState();
}

class _countsportyState extends State<countsporty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 99, 11, 5),
      body: Column(
        children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               // margin: EdgeInsets.only(right: 100),
                child: IconButton(onPressed: (){
                  
                }, icon: Icon(Icons.arrow_back)),
              ),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("S",style: TextStyle(fontSize: 40,
                  color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("I",style: TextStyle(fontSize: 40,
                  color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
              Icon(Icons.fitness_center_outlined,
              color: Colors.white,
              size: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("P",style: TextStyle(fontSize: 40,
                  color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("F",style: TextStyle(fontSize: 40,
                  color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("O",style: TextStyle(fontSize: 40,
                  color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("Y",style: TextStyle(fontSize: 40,
                  color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text("R",style: TextStyle(fontSize: 40,
                    color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text("T",style: TextStyle(fontSize: 40,
                    color: Colors.white,fontWeight: FontWeight.bold),),
                  )
                ],
              )

            ],
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 250),
            child: Text("حسابات النادي",style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white),),
          ),
           SizedBox(height: 30,),
          Column(
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
               )
            ],
          ),
          SizedBox(height: 30,),
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
          Container(
            

            width: 130,
           margin: EdgeInsets.only(right:200 ),
            color: Color.fromARGB(255, 73, 8, 3),
            child: MaterialButton(
              
              onPressed: (){
          
            },child: Text("تم",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold),),),
          ),
                   SizedBox(height: 100,),
                      Container(
              margin: EdgeInsets.only(bottom: 20),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 60,
               
                minWidth: 300,
                color:Colors.grey,
                onPressed: (){
                  Navigator.of(context).pushNamed("logincotch");
                },child: Text("انشاء حساب",
              style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold),),),
            )
        ],
        
      ),
      
      

      
    );
  }
}