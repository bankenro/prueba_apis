import 'package:prueba_apis/model/address_model.dart';
import 'package:prueba_apis/providers/repository.dart';
import 'package:rxdart/rxdart.dart';

class AddressBloc {
  final _repository = Repository();
  final _address = PublishSubject<AddressModel>();

  Stream<AddressModel> get address => _address.stream;

  getAddresses() async {
    AddressModel addressModel = await _repository.getAddress();
    _address.add(addressModel);
  }

  dispose() {
    _address.close();
  }
}
