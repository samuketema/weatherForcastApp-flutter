import 'dart:convert';

import 'package:http/http.dart';

class NetworkHelper{
  NetworkHelper(this.url);
  final String? url;
  Future getData() async{
      Response response = await get(Uri.parse(url as String));
      String data = response.body;
      if (response.statusCode == 200){
         return jsonDecode(data);
      }
      else{
        throw Exception("Faild to load");
      }
  }

}