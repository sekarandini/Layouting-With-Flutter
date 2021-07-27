import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _UsernameController = TextEditingController();
  final _PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            TextField(
              controller: _UsernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _PasswordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            // TODO: Add button bar (101)
            ButtonBar(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      _UsernameController.clear();
                      _PasswordController.clear();
                    },
                    child: Text('CANCEL')),
                RaisedButton(
                  onPressed: () {
                    _UsernameController.clear();
                    _PasswordController.clear();
                    Navigator.pop(context);
                  },
                  child: Text('NEXT'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)