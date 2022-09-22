import 'package:empdir/models/employee.dart';
import 'package:flutter/material.dart';

class CompanyDetailBox extends StatelessWidget {
  final Company company;
  const CompanyDetailBox({Key? key, required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            color: Colors.grey[300],
            child: const Text("Company",style: TextStyle(color: Colors.black87,fontSize: 16),),
          ),
          Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
         child :  Row(
           
           children: [
              const Expanded(
              flex: 1,
              child: Text("Name : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
             Expanded(
              flex: 3,
              child: Text(company.name??"",
              overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
           ],
         )
          ),
           Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
         child :  Row(
           children: [
             const Expanded(
              flex: 1,
              child: Text("Catch Phrase : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
             Expanded(
              flex: 3,
              child: Text(company.catchPhrase??"",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
           ],
         )
          ),
           Padding(padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
         child :  Row(
           children: [
             const Expanded(
              flex: 1,
              child: Text("BS : ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)),
             Expanded(
              flex: 3,
              child: Text(company.bs??"",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),))
           ],
         )
          ),
      ],
    );
  }
}
