import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/modules/login/controllers/login_controller.dart';
import 'package:horadedoar/app/routes/app_pages.dart';
import 'package:horadedoar/app/shared/widgets/hd_textbutton.dart';
import 'package:horadedoar/app/shared/widgets/hd_textfield.dart';
import 'package:horadedoar/app/theme/app_theme.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('assets/images/background_final.jpg'),
          fit: BoxFit.cover,
        ),
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
                  padding: const EdgeInsets.only(
                    top: 120.0,
                    left: 30,
                    right: 30,
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
                      HdTextField(
                        hintText: 'Seu e-mail',
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      HdTextField(
                        hintText: 'Senha',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
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
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      HdTextButton(
                        label: 'Entrar',
                        backgroundColor: appThemeData.primaryColor,
                        onPressed: () {
                          print('entrar pressed');
                        },
                      ),
                      SizedBox(height: 15.0),
                      HdTextButton(
                        label: 'Cadastrar',
                        backgroundColor: Color(0XFFB5505C),
                        onPressed: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                      ),
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
}
