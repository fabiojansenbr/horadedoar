import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horadedoar/app/modules/forgot_password/controllers/forgot_password_controller.dart';
import 'package:horadedoar/app/shared/widgets/hd_textbutton.dart';
import 'package:horadedoar/app/shared/widgets/hd_textfield.dart';
import 'package:horadedoar/app/theme/app_theme.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
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
                    left: 45,
                    right: 45,
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
                      SizedBox(height: 200.0),
                      HdTextButton(
                        label: 'Redefinir senha',
                        backgroundColor: appThemeData.primaryColor,
                        onPressed: () {
                          print('Redefinir pressed');
                        },
                      ),
                      SizedBox(height: 15.0),
                      HdTextButton(
                        label: 'Voltar',
                        backgroundColor: Color(0XFFB5505C),
                        onPressed: () {
                          Get.back();
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
