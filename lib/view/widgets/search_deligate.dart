import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/employee_provider.dart';
import '../Screens/employee_details.dart';
import 'employee_card.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Consumer<EmployeeProvider>(
        builder: ((context, value, child) => ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: value.searchData(query: query).length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EmployeeDetails(
                              employee: value.searchData(query: query)[index],
                            )));
                  },
                  child: EmployeeCard(
                    empCompany:
                        value.searchData(query: query)[index].company?.name ??
                            "",
                    empId: value.searchData(query: query)[index].id!,
                    empImage:
                        value.searchData(query: query)[index].profileImage!,
                    empName: value.searchData(query: query)[index].name ?? "",
                  )),
            )));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    print(query);
    return Consumer<EmployeeProvider>(
        builder: ((context, value, child) => ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: value.searchData(query: query).length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EmployeeDetails(
                              employee: value.searchData(query: query)[index],
                            )));
                  },
                  child: EmployeeCard(
                    empCompany:
                        value.searchData(query: query)[index].company?.name ??
                            "",
                    empId: value.searchData(query: query)[index].id!,
                    empImage:
                        value.searchData(query: query)[index].profileImage!,
                    empName: value.searchData(query: query)[index].name ?? "",
                  )),
            )));
  }
}
