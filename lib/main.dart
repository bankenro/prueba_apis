import 'dart:io';

import 'package:flutter/material.dart';
import 'package:prueba_apis/bloc/address_bloc.dart';
import 'package:prueba_apis/model/address_model.dart';

class AppHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = AppHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AddressBloc _addressBloc;
  List<Addresses> addressesInitial = [];
  var addressesFinal = List<Addresses>();

  @override
  void initState() {
    _addressBloc = AddressBloc();
    getAddresses();
  }

  getAddresses() async {
    _addressBloc.getAddresses();
    addressesInitial = [];
    addressesFinal = [];
    _addressBloc.address.listen((event) {
      addressesInitial = event.addresses;
      addressesInitial.forEach((element) {
        addressesFinal.add(Addresses(
            id: element.id,
            firstName: element.firstName,
            lastName: element.lastName,
            companyName: element.companyName,
            streetAddress1: element.streetAddress1,
            streetAddress2: element.streetAddress2,
            city: element.city,
            cityArea: element.city,
            postalCode: element.postalCode,
            country: element.country,
            countryArea: element.country,
            phone: element.phone,
            erpCodcen: element.erpCodcen,
            erpRazcli: element.erpRazcli,
            erpIsopai: element.erpIsopai,
            erpNomcen: element.erpNomcen,
            erpCodprovi: element.erpCodprovi,
            erpEmacen: element.erpEmacen,
            erpTelcen: element.erpTelcen,
            userId: element.userId,
            erpDircli: element.erpDircli,
            erpNumcli: element.erpNumcli,
            erpEditable: element.erpEditable,
            erpDircen: element.erpDircen,
            erpNumcen: element.erpNumcen));
      });
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('PruebaAPI'),),
      body: Column(
        children: <Widget>[
          ButtonTheme(
            shape: CircleBorder(),
            minWidth: 60.0,
            height: 60.0,
            child: RaisedButton(
              child: Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Icon(Icons.refresh,size: 50,)),
              onPressed: () {
                getAddresses();
              },
              color: Colors.white,
            ),
          ),
          Expanded(
              child: Container(
                child: ListView(
                    shrinkWrap: true,
                    children: addressesFinal.map((e) {
                      return Container(
                        color: Colors.grey[100],
                        child: Row(
                          children: <Widget>[
                            Container(
                              child:
                              Text('${e.streetAddress1}, ${e.streetAddress2}'),
                            ),
                            Container(
                              child: Icon(Icons.add),
                            ),
                            Container(
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      );
                    }).toList()),
              ))
        ],
      ),
    ),);
  }
}
