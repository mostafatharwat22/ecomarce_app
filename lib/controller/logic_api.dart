import 'dart:convert';
import 'package:eng_esraa_ecomarce/models/model2.dart';
import 'package:http/http.dart' as http;

class ApiServises {
 static Future<List<ModelData>> getServise()async{
   List<ModelData> map = [];
    Uri url = Uri.parse(
        "https://fakestoreapi.com/products",
    );
    http.Response response =await http.get(url);
   dynamic data=await jsonDecode(response.body);
   print(data);
   for(var i in data){
     ModelData model = ModelData.fromJson(i);
     map.add(model);
   }
   return map;


  }
}