import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/modules/login/controllers/login_controller.dart';
import 'package:horadedoar/app/routes/app_pages.dart';
import 'package:horadedoar/app/theme/app_theme.dart';
import 'package:horadedoar/app/theme/custom_theme.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage('assets/images/background_final.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/logo_full.png'),
                        width: Get.width * .60,
                        height: Get.height * .20,
                      ),
                      SizedBox(height: 40.0),
                      _buildEmailTF(),
                      SizedBox(height: 15.0),
                      _buildPasswordTF(),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Esqueceu sua senha?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      _buildLoginBtn(),
                      SizedBox(height: 10.0),
                      _buildRegisterBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: CustomTheme.cfBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              hintText: 'Seu e-mail',
              //hintStyle: MainTheme.cfHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: CustomTheme.cfBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: 'Senha',
              //hintStyle: MainTheme.cfHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 5.0,
          padding: EdgeInsets.all(18.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: Color(0XFFB5505C),
        ),
        onPressed: () {
          Get.toNamed(Routes.REGISTER);
        },
        child: Text(
          'Cadastrar',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 5.0,
          padding: EdgeInsets.all(18.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: appThemeData.primaryColor,
        ),
        onPressed: () {},
        child: Text(
          'Entrar',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
