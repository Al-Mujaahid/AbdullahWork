

import 'package:figma_work/frontend/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<LoginProvider>(
        create: (context) => LoginProvider(),
        child: Consumer<LoginProvider>(
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text('Login'),
                SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                  onChanged: (text) => value.setEmail = text,
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                  obscureText: true,
                  onChanged: (text) => value.setPassword = text,
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () => value.login(context),
                )

              ],
            );
          }
        ),
      )
    );
  }
}