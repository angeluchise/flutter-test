import 'package:flutter/material.dart';
import 'package:project_test/MainScreens/login/LoginScreen.dart';
import 'package:project_test/Utils/TextApp.dart';
import 'package:project_test/Widgets/Desing/DesingAssets.dart';
import 'package:project_test/Widgets/Desing/components/Buttons/myLoginButton.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

Widget _registerButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlineButton(
      borderSide: BorderSide(color: Colors.white),
      highlightedBorderColor: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () => print('Botón registro pulsado'),
      child: Text(
        TextApp.SINGUP,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  );
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: DesignAssets().linearGradientMain(context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DesignAssets.tittleCustom(),
              MyLoginButton(TextApp.LOGIN, Theme.of(context).primaryColor,
                  Colors.white, LoginScreen()),
              _registerButton(context)
            ],
          ),
        ),
      )),
    );
  }
}
