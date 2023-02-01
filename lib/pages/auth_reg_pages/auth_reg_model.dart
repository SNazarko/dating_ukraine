import 'package:dating_ukraine/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRegModel extends ChangeNotifier{
  String _mail = '';
  String _pass = '';
  String _name = '';
  bool _isLoading = false;


bool get getIsLoading => _isLoading;
  String get getMail => _mail;
  String get getPass => _pass;
  String get getName => _name;


  void isLoading(bool value){
    _isLoading = value;
    notifyListeners();
  }


  void setMail(String value){
    _mail = value;
    notifyListeners();
  }

  void setPass(String value){
    _pass = value;
    notifyListeners();
  }

  void setName(String value){
    _name = value;
    notifyListeners();
  }

Future<void> singIn()async{
    final bool validMail = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(_mail);
    if(_mail.isNotEmpty && !validMail && _pass.isNotEmpty)
    await AuthRepository.instance.singInWightEmailAndPassword(_mail, _pass);
}
  Future<bool> register()async{
    final bool validMail = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(_mail);
    if(_mail.isNotEmpty && validMail && _pass.isNotEmpty)
      await AuthRepository.instance.createUserWightEmailAndPassword(_mail, _pass);
    final User? user =  await AuthRepository.instance.currentUser;
  if(user != null){
    return true;
  }else{
    return false;
  }
  }

}