import 'dart:convert';

import 'package:empdir/models/employee.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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
      final prefs = await SharedPreferences.getInstance();
      if (prefs.containsKey("empData")) {
        
        final String? jsonData = prefs.getString('empData');
        List result = json.decode(jsonData!);

        List<Employee> data = [];
        for (var i = 0; i < result.length; i++) {
          data.add(Employee.fromJson(result[i]));
        }

        setEmployeeData(data);
      } else {
       
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
          await prefs.setString('empData', response.body);
          setEmployeeData(data);
        }
      }
    } catch (e) {
     
      throw Exception(e);
    }
  }

  List<Employee> searchData({String query = ""}) {
    List<Employee> data = [];

    if (query == "") {
      data = _employeeData;
    } else {
      for (var i = 0; i < _employeeData.length; i++) {
        if (_employeeData[i]
                .name!
                .toUpperCase()
                .contains(query.toUpperCase()) ||
            _employeeData[i]
                .email!
                .toUpperCase()
                .contains(query.toUpperCase())) {
          data.add(_employeeData[i]);
        } else {
          continue;
        }
      }
    }

    return data;
  }
}
