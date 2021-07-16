

import 'package:figma_work/frontend/providers/base_provider.dart';
import 'package:figma_work/src/services/index.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends BaseProvider {


  String _email = '';
  String _password = '';

  String get email => _email;
  String get password => _password;

  set setEmail(String email) {
    _email = email;
    notifyListeners();
  }


  
  set setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void login(BuildContext context) async {

    if (_email.length == 0 || _password.length == 0) {
      // show alert all fields are required
      print('All fields are required');
    } else {
      var response = await authService.login({
        'email': _email, 'password': _password
      });

      print(response.toJson());

      if (response.status) {
        // Call success alert
        print('done');
      } else {
        // Call error alert
        print(response.message);
      }
    }
  }
}