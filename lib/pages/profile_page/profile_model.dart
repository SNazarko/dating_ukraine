import 'package:flutter/cupertino.dart';

class ProfileModel extends ChangeNotifier{
  String _name = '';
  String _dateOfBirth = '';
  String _region = '';
  String _city = '';
  String? _sex;
  String? _sex2;
  String? _purpose;
  bool _isLoading = false;


  bool get getIsLoading => _isLoading;
  String get getName => _name;
  String get getDateOfBirth => _dateOfBirth;
  String get getRegion => _region;
  String get getCity => _city;
  String? get getSex => _sex;
  String? get getSex2 => _sex2;
  String? get getPurpose => _purpose;


  void isLoading(bool value){
    _isLoading = value;
    notifyListeners();
  }

  void setName(String value){
    _name = value;
    notifyListeners();
  }
  void setDateOfBirth(String value){
    _dateOfBirth = value;
    notifyListeners();
  }

  void setRegion(String value){
    _region = value;
    notifyListeners();
  }
  void setCity(String value){
    _city = value;
    notifyListeners();
  }
  void setSex(String value){
    _sex = value;
    notifyListeners();
  }

  void setSex2(String value){
    _sex2 = value;
    notifyListeners();
  }

  void setPurpose(String value){
    _purpose = value;
    notifyListeners();
  }


}