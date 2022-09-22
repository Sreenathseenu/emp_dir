import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmployeeDetails extends StatelessWidget {
  const EmployeeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Employee"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
            SizedBox(height: 10,),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                child: Hero(
                  tag: "Demo",
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage:  NetworkImage(
                            "https://randomuser.me/api/portraits/men/10.jpg"),
                  ),
                ),
              ),
            ),
            Center(child: Text("Employee Name",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
            Center(child: Text("Username",style: TextStyle(color: Colors.black54,fontSize: 18,fontWeight: FontWeight.w600),)),
            Center(child: Text("+91 9984984934",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400),)),
            
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              color: Colors.grey[300],
              child: Text("Email",style: TextStyle(color: Colors.black87,fontSize: 16),),
            ),
            Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Text("Email",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
            ),
            
             Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              color: Colors.grey[300],
              child: Text("Website",style: TextStyle(color: Colors.black87,fontSize: 16),),
            ),
            Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Text("Employee Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
            ),
             Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              color: Colors.grey[300],
              child: Text("Address",style: TextStyle(color: Colors.black87,fontSize: 16),),
            ),
            Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("Street : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),
             Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("suite : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),
             Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("city : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),
             Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("zipcode : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),
             Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              color: Colors.grey[300],
              child: Text("Company",style: TextStyle(color: Colors.black87,fontSize: 16),),
            ),
            Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("Name : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),
             Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("Catch Phrase : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),
             Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child :  Row(
             children: [
               Expanded(
                flex: 1,
                child: Text("BS : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
               Expanded(
                flex: 3,
                child: Text("Sreet Name",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
             ],
           )
            ),

            SizedBox(height: 40,)
            
          ],
        ),
      ),
    );
  }
}
