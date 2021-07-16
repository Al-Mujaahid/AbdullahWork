import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Colors.indigo),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "Login Page",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Email required**";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Input email",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: 'Input email'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password required**";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Input password",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            labelText: 'Input password'),
                      ),
                      SizedBox(height: 50),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            //color: Colors.indigo,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                border: Border.all(color: Colors.indigo)),
                            child: Text("Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                )),
                          ))
                    ],
                  ),
                ),
              )),
        ));
  }
}
