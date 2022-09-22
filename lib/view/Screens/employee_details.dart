import 'package:empdir/models/employee.dart';
import 'package:empdir/view/widgets/address_details_box.dart';
import 'package:empdir/view/widgets/company_detail_box.dart';
import 'package:empdir/view/widgets/detail_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmployeeDetails extends StatelessWidget {
  final Employee employee;
  const EmployeeDetails({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Hero(
                  tag: employee.id.toString(),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage(
                        employee.profileImage==""? "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png":employee.profileImage!),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              employee.name??"",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              employee.username??"",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
            Center(
                child: Text(
              employee.phone??"",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )),
            const SizedBox(
              height: 20,
            ),
            DetailBox(title:"Email",value: employee.email??"", ),
            DetailBox(title:"Website",value: employee.website??"",),
           employee.address!=null? AddressDetailBox(address: employee.address!):Container(),
           employee.company!=null?  CompanyDetailBox(company: employee.company!,):Container(),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
