import 'package:prueba_apis/model/address_model.dart';
import 'package:prueba_apis/providers/api_provider.dart';

class Repository {
  final apiProvider = APIProvider();

  Future<AddressModel> getAddress() => apiProvider.getAddress();
}
