import 'package:flutter/material.dart';

class profile extends StatelessWidget{
  const profile ({Key?key}):super (key: key);
  @override
  Widget build(BuildContext context){
    TextEditingController username =TextEditingController();
     TextEditingController email =TextEditingController();
      TextEditingController phone =TextEditingController();
       TextEditingController password =TextEditingController();

    return Directionality(textDirection: TextDirection.rtl, child:
     Scaffold(
      appBar:AppBar(
          backgroundColor:  Colors.transparent,
      
      flexibleSpace: Container( decoration: BoxDecoration(
                
                    gradient: LinearGradient(colors: [Colors.grey.withOpacity(0.6),Colors.black],
                  begin:Alignment.topRight,
                    end: Alignment.topLeft),
                    
                  ),),
    
      leading: IconButton(
          onPressed: () {   Navigator.pop(context);},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.grey.withOpacity(0.5),
            fixedSize: const Size(30, 30),
          ),
          icon: const Icon(Icons.arrow_back),color: Colors.white,),
      ),
       backgroundColor:  Colors.transparent,
        
     
      body:  SingleChildScrollView(
        child: Container(
       decoration: BoxDecoration(
              
                    gradient: LinearGradient(colors: [Colors.grey.withOpacity(0.6),Colors.black],
                    begin:Alignment.topRight,
                    end: Alignment.topLeft),
                    
                  ),
          
          padding: EdgeInsets.only(top: 50.0),
          child: Stack(
            
            children:<Widget> [
              Container(
                margin: EdgeInsets.only(top: 80.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
          
                  )
                ),
                child: Column(children:<Widget> [ 
                
                  Container(
                    padding: EdgeInsets.only(top:80.0,left: 20.0,right: 20.0),
                    child: Column(children:<Widget> [
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                          labelText: 'اسم المستخدم',
                          prefixIcon: Icon(Icons.person),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder:myfocusborder()
                    
                        ),
                      ),
                      SizedBox(height: 20.0,),
                       TextField(
                        controller: email,
                        decoration: InputDecoration(
                          labelText: 'الايميل',
                          prefixIcon: Icon(Icons.email),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder:myfocusborder()
                    
                        ),
                      ),
                      SizedBox(height: 20.0,),
                       TextField(
                        controller: phone,
                        decoration: InputDecoration(
                          labelText: 'رقم الجوال',
                          prefixIcon: Icon(Icons.phone),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder:myfocusborder()
                    
                        ),
                      ),
                      SizedBox(height: 20.0,),
                       TextField(
                        controller: password,
                        decoration: InputDecoration(
                          labelText: 'كلمه المرور',
                          prefixIcon: Icon(Icons.password),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder:myfocusborder()
                    
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(onPressed:(){}, 
                      child: Text("تحديث",
                      style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 20.0),
                        textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)
                      ),)
                    ],),
                  )
        
                ],
                ),
        
              ),
              Align(
              alignment: Alignment.topCenter,
              child: Stack(
            
                children: 
                  <Widget> [
                    ClipOval(child: Image.network('data:image/jpeg;base64,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', width:  150,height: 150,fit: BoxFit.cover)
                    ),
                    Positioned(
                      bottom: 5,
                      right: 15.5,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.camera_alt_outlined,size: 30.0,
                        ),
                      ),
                    
            
                    )
          
                    ]
              )
            
                    ),
            ]
          
          
            ),
        ),
      ),
      
    
      
      
     )
      );

      
    
    
    
      
    
  }
  OutlineInputBorder myinputborder(){
    return OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(color: Colors.black,
    width: 3),
    );
    
  }
  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(color: Colors.black,
    width: 3),
    );
  }
}