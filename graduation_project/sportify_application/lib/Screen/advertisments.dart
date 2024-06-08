import 'package:flutter/material.dart';
import 'package:sportify_application/widget/appbar.dart';

class advertisments extends StatelessWidget {
  const advertisments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
        width: double.infinity,
         height: double.infinity,
       

        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: NetworkImage('lib/asset/discount.png'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
             ),
             ),
           child:
     
          Column(
            children: [
              appbar(),
              SizedBox(height: 50),
              Container(
                
                

              
                height: 100,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 0.5
                      )
                    ]
                ),
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                     
                      margin: EdgeInsets.all(20),
                      child: MaterialButton(
                         shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                        
                        color: Color.fromARGB(255, 104, 8, 2),
                        
                        onPressed: (){},
                      child: Text("استغلال الخصم",style: TextStyle(color: Colors.white),),),
                    ),
                  InkWell
                  (
                    
                    onTap: (){

                    },
                    child:   Icon(Icons.cancel,),
                  )
                    
                  ],
                ),
                
                
              ),
              SizedBox(height: 20,),
              Container(
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 0.5
                      )
                    ]
                ),
               
                height: 100,
                width: 370,
                
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 0.5
                      )
                    ]
                ),
               
                height: 100,
                width: 370,
              )
            ],

          )
        
      ),
      
    );
  }
}