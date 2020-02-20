class AddressModel {
  List<Addresses> _addresses;
  int _erpDirfac;
  int _erpDirmer;

  AddressModel({List<Addresses> addresses, int erpDirfac, int erpDirmer}) {
    this._addresses = addresses;
    this._erpDirfac = erpDirfac;
    this._erpDirmer = erpDirmer;
  }

  List<Addresses> get addresses => _addresses;
  set addresses(List<Addresses> addresses) => _addresses = addresses;
  int get erpDirfac => _erpDirfac;
  set erpDirfac(int erpDirfac) => _erpDirfac = erpDirfac;
  int get erpDirmer => _erpDirmer;
  set erpDirmer(int erpDirmer) => _erpDirmer = erpDirmer;

  AddressModel.fromJson(Map<String, dynamic> json) {
    if (json['addresses'] != null) {
      _addresses = new List<Addresses>();
      json['addresses'].forEach((v) {
        _addresses.add(new Addresses.fromJson(v));
      });
    }
    _erpDirfac = json['erp_dirfac'];
    _erpDirmer = json['erp_dirmer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._addresses != null) {
      data['addresses'] = this._addresses.map((v) => v.toJson()).toList();
    }
    data['erp_dirfac'] = this._erpDirfac;
    data['erp_dirmer'] = this._erpDirmer;
    return data;
  }
}

class Addresses {
  int _id;
  String _firstName;
  String _lastName;
  String _companyName;
  String _streetAddress1;
  String _streetAddress2;
  String _city;
  String _cityArea;
  String _postalCode;
  String _country;
  String _countryArea;
  String _phone;
  int _erpCodcen;
  String _erpRazcli;
  String _erpIsopai;
  String _erpNomcen;
  int _erpCodprovi;
  String _erpEmacen;
  String _erpTelcen;
  int _userId;
  String _erpDircli;
  String _erpNumcli;
  bool _erpEditable;
  String _erpDircen;
  String _erpNumcen;

  Addresses(
      {int id,
        String firstName,
        String lastName,
        String companyName,
        String streetAddress1,
        String streetAddress2,
        String city,
        String cityArea,
        String postalCode,
        String country,
        String countryArea,
        String phone,
        int erpCodcen,
        String erpRazcli,
        String erpIsopai,
        String erpNomcen,
        int erpCodprovi,
        String erpEmacen,
        String erpTelcen,
        int userId,
        String erpDircli,
        String erpNumcli,
        bool erpEditable,
        String erpDircen,
        String erpNumcen}) {
    this._id = id;
    this._firstName = firstName;
    this._lastName = lastName;
    this._companyName = companyName;
    this._streetAddress1 = streetAddress1;
    this._streetAddress2 = streetAddress2;
    this._city = city;
    this._cityArea = cityArea;
    this._postalCode = postalCode;
    this._country = country;
    this._countryArea = countryArea;
    this._phone = phone;
    this._erpCodcen = erpCodcen;
    this._erpRazcli = erpRazcli;
    this._erpIsopai = erpIsopai;
    this._erpNomcen = erpNomcen;
    this._erpCodprovi = erpCodprovi;
    this._erpEmacen = erpEmacen;
    this._erpTelcen = erpTelcen;
    this._userId = userId;
    this._erpDircli = erpDircli;
    this._erpNumcli = erpNumcli;
    this._erpEditable = erpEditable;
    this._erpDircen = erpDircen;
    this._erpNumcen = erpNumcen;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get companyName => _companyName;
  set companyName(String companyName) => _companyName = companyName;
  String get streetAddress1 => _streetAddress1;
  set streetAddress1(String streetAddress1) => _streetAddress1 = streetAddress1;
  String get streetAddress2 => _streetAddress2;
  set streetAddress2(String streetAddress2) => _streetAddress2 = streetAddress2;
  String get city => _city;
  set city(String city) => _city = city;
  String get cityArea => _cityArea;
  set cityArea(String cityArea) => _cityArea = cityArea;
  String get postalCode => _postalCode;
  set postalCode(String postalCode) => _postalCode = postalCode;
  String get country => _country;
  set country(String country) => _country = country;
  String get countryArea => _countryArea;
  set countryArea(String countryArea) => _countryArea = countryArea;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  int get erpCodcen => _erpCodcen;
  set erpCodcen(int erpCodcen) => _erpCodcen = erpCodcen;
  String get erpRazcli => _erpRazcli;
  set erpRazcli(String erpRazcli) => _erpRazcli = erpRazcli;
  String get erpIsopai => _erpIsopai;
  set erpIsopai(String erpIsopai) => _erpIsopai = erpIsopai;
  String get erpNomcen => _erpNomcen;
  set erpNomcen(String erpNomcen) => _erpNomcen = erpNomcen;
  int get erpCodprovi => _erpCodprovi;
  set erpCodprovi(int erpCodprovi) => _erpCodprovi = erpCodprovi;
  String get erpEmacen => _erpEmacen;
  set erpEmacen(String erpEmacen) => _erpEmacen = erpEmacen;
  String get erpTelcen => _erpTelcen;
  set erpTelcen(String erpTelcen) => _erpTelcen = erpTelcen;
  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  String get erpDircli => _erpDircli;
  set erpDircli(String erpDircli) => _erpDircli = erpDircli;
  String get erpNumcli => _erpNumcli;
  set erpNumcli(String erpNumcli) => _erpNumcli = erpNumcli;
  bool get erpEditable => _erpEditable;
  set erpEditable(bool erpEditable) => _erpEditable = erpEditable;
  String get erpDircen => _erpDircen;
  set erpDircen(String erpDircen) => _erpDircen = erpDircen;
  String get erpNumcen => _erpNumcen;
  set erpNumcen(String erpNumcen) => _erpNumcen = erpNumcen;

  Addresses.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _companyName = json['company_name'];
    _streetAddress1 = json['street_address_1'];
    _streetAddress2 = json['street_address_2'];
    _city = json['city'];
    _cityArea = json['city_area'];
    _postalCode = json['postal_code'];
    _country = json['country'];
    _countryArea = json['country_area'];
    _phone = json['phone'];
    _erpCodcen = json['erp_codcen'];
    _erpRazcli = json['erp_razcli'];
    _erpIsopai = json['erp_isopai'];
    _erpNomcen = json['erp_nomcen'];
    _erpCodprovi = json['erp_codprovi'];
    _erpEmacen = json['erp_emacen'];
    _erpTelcen = json['erp_telcen'];
    _userId = json['user_id'];
    _erpDircli = json['erp_dircli'];
    _erpNumcli = json['erp_numcli'];
    _erpEditable = json['erp_editable'];
    _erpDircen = json['erp_dircen'];
    _erpNumcen = json['erp_numcen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['company_name'] = this._companyName;
    data['street_address_1'] = this._streetAddress1;
    data['street_address_2'] = this._streetAddress2;
    data['city'] = this._city;
    data['city_area'] = this._cityArea;
    data['postal_code'] = this._postalCode;
    data['country'] = this._country;
    data['country_area'] = this._countryArea;
    data['phone'] = this._phone;
    data['erp_codcen'] = this._erpCodcen;
    data['erp_razcli'] = this._erpRazcli;
    data['erp_isopai'] = this._erpIsopai;
    data['erp_nomcen'] = this._erpNomcen;
    data['erp_codprovi'] = this._erpCodprovi;
    data['erp_emacen'] = this._erpEmacen;
    data['erp_telcen'] = this._erpTelcen;
    data['user_id'] = this._userId;
    data['erp_dircli'] = this._erpDircli;
    data['erp_numcli'] = this._erpNumcli;
    data['erp_editable'] = this._erpEditable;
    data['erp_dircen'] = this._erpDircen;
    data['erp_numcen'] = this._erpNumcen;
    return data;
  }
}
