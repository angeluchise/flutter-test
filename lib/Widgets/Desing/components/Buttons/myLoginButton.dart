import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_test/Utils/TextApp.dart';

class MyLoginButton extends StatelessWidget {
  String _text;
  Color _colorText;
  Color _colorButtonBackground;
  Widget _widgetToNAvigate;
  MyLoginButton(this._text, this._colorText, this._colorButtonBackground,
      this._widgetToNAvigate);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0, bottom: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => _widgetToNAvigate)),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: _colorButtonBackground,
        child: Text(_text,
            style: TextStyle(
              color: _colorText,
              letterSpacing: 1.5,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
