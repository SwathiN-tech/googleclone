import 'package:google_clone_tutorial/config/api_keys.dart';
import 'package:google_clone_tutorial/services/api_json.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  bool isDummyData = false;
  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains('')
            ? queryTerm.split('').join('%20')
            : queryTerm;
        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=${apiKey}&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      print(
        e.toString(),
      );
    }
    return apiResponse;
  }
}
