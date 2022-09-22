import 'package:empdir/provider/employee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/employee_card.dart';
import '../widgets/search_deligate.dart';
import 'employee_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
       future: Provider.of<EmployeeProvider>(context, listen: false)
           .getEmployeeData(),
        builder: ((context, snapshot) => Scaffold(
            appBar: AppBar(
              title: const Text("Employees"),
              actions: [
                IconButton(
                    onPressed: () {
                      showSearch(
                          context: context, delegate: CustomSearchDelegate());
                    },
                    icon: Icon(Icons.search))
              ],
            ),
            body: snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Consumer<EmployeeProvider>(
                    builder: ((context, value, child) => ListView.builder(
                          padding: EdgeInsets.all(16),
                          itemCount: value.employee.length,
                          itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EmployeeDetails(employee: value.employee[index],)));
                              },
                              child: EmployeeCard(
                                empCompany: value.employee[index].company?.name??"",
                                empId: value.employee[index].id!,
                                empImage: value.employee[index].profileImage!,
                                empName: value.employee[index].name??"",
                              )),
                        ))))));
  }
}
