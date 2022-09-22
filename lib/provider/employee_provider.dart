import 'dart:convert';

import 'package:empdir/models/employee.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EmployeeProvider extends ChangeNotifier {
  List<Employee> _employeeData = [];

  void setEmployeeData(List<Employee> data) {
    _employeeData = data;
   
    notifyListeners();
  }

  List<Employee> get employee {
    return _employeeData;
  }

  Future<void> getEmployeeData() async {
    try {
      final response = await http.get(
        Uri.parse("http://www.mocky.io/v2/5d565297300000680030a986"),
      );
      if (response.statusCode != 200) {
        throw Exception("Server Error");
      } else {
        List result = json.decode(response.body);
       
        List<Employee> data = [];
        for (var i = 0; i < result.length; i++) {
          data.add(Employee.fromJson(result[i]));
        }
        setEmployeeData(data);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  
}
