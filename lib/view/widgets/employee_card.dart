import 'package:flutter/material.dart';

class EmployeeCard extends StatelessWidget {
  final int empId;
  final String empName;
  final String empImage;
  final String empCompany;
  const EmployeeCard(
      {Key? key,
      required this.empId,
      required this.empName,
      required this.empImage,
      required this.empCompany})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      elevation: 3,
      child: ListTile(
        leading: Hero(
          tag: empId.toString(),
          child:empImage==""? const Icon(Icons.account_box_outlined,size: 40,): Image(image:NetworkImage(empImage)),
        ),
        title: Text(
          empName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          empCompany,
          style: const TextStyle(fontSize: 14),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
