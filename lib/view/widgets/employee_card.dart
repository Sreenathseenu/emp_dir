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
          child: Image(image: NetworkImage(empImage==""?"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png":empImage)),
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
