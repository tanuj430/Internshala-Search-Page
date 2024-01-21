import 'dart:convert';

import 'internship_list_model.dart';
import 'package:http/http.dart' as http;

class ApiCall{
  List<InternshipListModel> internshipData = [];

  String url = "https://internshala.com/flutter_hiring/search";

  Future<List<InternshipListModel>> getData() async{

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      final data = jsonDecode(response.body.toString());
      for(Map<String,dynamic> map in data){
          internshipData.add(InternshipListModel.fromJson(map));
      }
      return internshipData;

    }else{
      return throw Exception("http failed");
    }

  }


}