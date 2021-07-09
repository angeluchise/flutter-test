import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:project_test/MainScreens/homeScreen.dart';
import 'package:project_test/MainScreens/login/singUp.dart';
import 'package:project_test/Utils/TextApp.dart';
import 'package:project_test/Widgets/Desing/DesingAssets.dart';
import 'package:project_test/Widgets/Desing/components/Buttons/myBackButton.dart';
import 'package:project_test/Widgets/Desing/components/Buttons/myLoginButton.dart';
import 'package:project_test/Widgets/Desing/components/Fields/myFieldForm.dart';
import 'package:project_test/Widgets/Desing/components/containers/containerShape01.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        MyFieldForm(TextApp.EMAIL, false),
        MyFieldForm(TextApp.PASSWORD, true)
      ],
    );
  }

  Widget _forgotPassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      child: Text(
        TextApp.FORGOT_PASSWORD,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          )),
          Text(TextApp.OR),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          )),
        ],
      ),
    );
  }

  Widget _singUpLabel() {
    return FlatButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SingUp())),
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TextApp.DONT_HAVE_ACCOUNT,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  )),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(TextApp.SINGUP,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ));
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        ContainerShape01(),
        Positioned(
          top: height * .025,
          child: MyBackButton(),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: height * .15),
                    child: DesignAssets.tittleCustomDark()),
                Padding(
                    padding: EdgeInsets.only(top: height * .05),
                    child: _emailPasswordWidget()),
                MyLoginButton(TextApp.LOGIN, Colors.white,
                    Theme.of(context).primaryColor, HomeScreen()),
                _forgotPassword(),
                _divider(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: GoogleSignInButton(
                    centered: true,
                    borderRadius: 5,
                    onPressed: () {},
                    darkMode: false,
                    text: TextApp.GOOGLE_SIGN,
                  ),
                ),
                _singUpLabel()
              ],
            ),
          ),
        )
      ],
    )));
  }
}
