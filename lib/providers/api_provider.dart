import 'dart:convert';
import 'package:http/http.dart';
import 'package:prueba_apis/model/address_model.dart';

class APIProvider {
  Client http = Client();
  final _baseUrl = '';
  final _userId = '';
  Map<String, String> headers = {
    'x-api-key': '',
  };


  Future<AddressModel> getAddress() async {
    String accion = 'account/addresses/';
    final queryParameters = {'user_id': '$_userId'};
    Uri uri = Uri.parse('$_baseUrl$accion');
    final newURI = uri.replace(queryParameters: queryParameters);
    print(newURI);
    final response = await http.get(newURI, headers: headers);
    print(response.headers);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return AddressModel.fromJson(json.decode(response.body));
    } else {
      return null;
    }
  }
}
